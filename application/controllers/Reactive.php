<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require_once("Pre_loader.php");

class Reactive extends Pre_loader {

   /**
    * Get All Data from this method.
    *
    * @return Response
   */

   public function __construct() {
    parent::__construct();

    $this->load->helper(array('form', 'url'));

  } 
  public function index(){

    $view_data['all_details'] = $this->Jobs_model->get_reactive_details();
    $this->template->rander('maintenance/reactive/job_card_index',$view_data);
  }
  public function model($id){
   $spare=$this->db->query("SELECT assets.description as make FROM assets 
    LEFT JOIN  jobs ON jobs.vehicle_no=assets.id WHERE jobs.id=$id")->row()->make;
   echo json_encode($spare);
 }
 public function spare($id){
  $vehicle=$this->db->query("SELECT assets.code as code FROM assets 
    LEFT JOIN  jobs ON jobs.vehicle_no=assets.id WHERE jobs.id=$id")->row()->code;
  echo json_encode($vehicle);
}

public function save_labour_service(){
  $amount=$this->db->query("SELECT * FROM rates_perhour LIMIT 1")->row()->amount;
  $start_date=$this->input->post('start_date');
  $end_date=$this->input->post('end_date');
  $datediff =strtotime($end_date)/(60*60*24)-strtotime($start_date)/(60*60*24);
  $total=$datediff*$amount;
  $data=array(
   'job_card_id' => $this->input->post('job_card_id'),
   'service_provider_id' => $this->input->post('service_provider_id'),
   'service_type' => $this->input->post('service_type'),
   'description' => $this->input->post('description'),
   'end_date' => $this->input->post('end_date'),
   'start_date' => $this->input->post('start_date'),
   'total_service' => $total
   );

  $inserted=$this->db->insert('external_services',$data);
  $id=$this->db->insert_id();
  $this->db->where('id',$id);
  $updated=array('service_no' => substr('ES-00'.$id,0,8));
  $this->db->update('external_services',$updated);
  echo json_encode($inserted);
}
public function save_parts_service(){
 $total_fuel=$this->input->post('amount')*$this->input->post('quantity');
 $data=array(
   'job_card_id' => $this->input->post('job_card_id'),
   'service_type' => $this->input->post('service_type'),
   'amount' => $this->input->post('amount'),
   'description' => $this->input->post('description'),
   'total_fuel' => $total_fuel,
   'quantity' => $this->input->post('quantity'),
   'stock_id' => $this->input->post('stock_id'),
   'supplier_id' => $this->input->post('supplier_id')

   );
 $inserted=$this->db->insert('external_services',$data);
 $id=$this->db->insert_id();
 $this->db->where('id',$id);
 $updated=array('service_no' => substr('ES-00'.$id,0,8));
 $this->db->update('external_services',$updated);
 echo json_encode($inserted);
}
public function external_service(){
 $this->External_service_model->get_details();

 $view_data['external_services']=$this->External_service_model->get_details();
 $this->template->rander('maintenance/reactive/external_index',$view_data);
}
public function external_service_create(){
  $view_data['extended_services_dropdown'] = $this->Extended_service_model->get_all_where(array("deleted" => 0))->result();
  $view_data['jobs_card_dropdown'] = $this->Jobs_model->get_all_where(array("deleted" => 0))->result();
  $view_data['suppliers_dropdown']=$this->Parts_suppliers_model->get_all_where(array("deleted" => 0))->result();
  $view_data['equipments_dropdown']=$this->Equipments_model->get_all_where(array("deleted" => 0))->result();
  $view_data['service_providers_dropdown']=$this->Service_providers_model->get_all_where(array("deleted" => 0))->result();
  $this->template->rander('maintenance/reactive/external',$view_data);
}
public function view_external($id){
  $view_data['services']=$this->db->query("SELECT external_services.* ,equipments.description as item,
    providers.name as provider,assets.code as vehicle,
    jobs.card_no,jobs.id as jID,parts_suppliers.name as supplier,assets.description as make,
    parts_suppliers.id as sID,jobs.description FROM external_services
    LEFT JOIN jobs ON jobs.id=external_services.job_card_id
    LEFT JOIN assets ON assets.id=jobs.vehicle_no
    LEFT JOIN parts_suppliers ON parts_suppliers.id=external_services.supplier_id
    LEFT JOIN providers ON external_services.service_provider_id=providers.id
    LEFT JOIN equipments ON equipments.id=external_services.stock_id
    WHERE external_services.id=$id")->result_array();
  $view_data['jobs_card_dropdown'] = $this->Jobs_model->get_all_where(array("deleted" => 0))->result();
  $view_data['suppliers_dropdown']=$this->Parts_suppliers_model->get_all_where(array("deleted" => 0))->result();
  $this->template->rander('maintenance/reactive/show_external',$view_data);
}
public function show_job($id)
{

  $job_id = $this->input->post('id');
  $view_data['tasks_info'] = $this->Job_tasks_model->get_details();
  $view_data['job_info'] = $this->Jobs_model->get_one($job_id);
  $view_data['services_dropdown'] = $this->Service_types_model->get_all_where(array("deleted" => 0))->result();
  $view_data['service_types_dropdown'] = $this->Job_services_model->get_all_where(array("deleted" => 0))->result();
  $view_data['inspections_dropdown'] = $this->Inspections_model->get_all_where(array("deleted" => 0))->result();
  $view_data['job_types_dropdown'] = $this->Job_types_model->get_all_where(array("deleted" => 0))->result();
  $view_data['vehicles_dropdown'] = $this->Assets_model->get_all_where(array("deleted" => 0))->result();
  $view_data['jobs_status_dropdown'] = $this->Jobs_status_model->get_all_where(array("deleted" => 0))->result();
  
  $view_data['jobs'] = $this->Jobs_model->fetchId($id);
  $view_data['services_dropdown'] = $this->Service_types_model->get_all_where(array("deleted" => 0))->result();
  $view_data['sage_staff_dropdown'] = $this->Employees_model->get_all_where(array("deleted" => 0))->result();
  $view_data ['job_types_dropdown'] = $this->Job_types_model->get_all_where(array("deleted" => 0))->result();
  $this->template->rander('maintenance/reactive/edit_form', $view_data);
}

    public function save_checklist($id)
    {
        if (!empty($_FILES['picture']['name'])) {
            $config['upload_path'] = 'uploads/images/';
            $config['allowed_types'] = 'jpg|jpeg|png|gif|pdf|doc|docx|xls|xlsx|csv|txt|rtf|html|zip|mp3|wma|mpg|flv|avi';
            $config['file_name'] = $_FILES['picture']['name'];

            //Load upload library and initialize configuration
            $this->load->library('upload', $config);
            $this->upload->initialize($config);

            if ($this->upload->do_upload('picture')) {
                $uploadData = $this->upload->data();
                $picture = $uploadData['file_name'];
            } else {
                $picture = '';
            }
        } else {
            $picture = '';
        }
        $uploaded = array('picture' =>$picture);
        $this->db->where('id',$id);
        $this->db->update('jobs',$uploaded);

    }


public function print_external($id){
  $view_data['jobs_card_dropdown'] = $this->Jobs_model->get_all_where(array("deleted" => 0))->result();
  $view_data['spare_parts_dropdown'] = $this->Equipments_model->get_all_where(array("deleted" => 0))->result();
  $view_data['services']=$this->db->query("SELECT spares.*,assets.code,jobs.card_no,
    equipments.description as spare,jobs.description FROM spares
    LEFT JOIN jobs ON jobs.id=spares.job_card_id 
    LEFT JOIN assets ON assets.id=jobs.vehicle_no
    LEFT JOIN equipments ON equipments.id=spares.stock_id
    WHERE spares.id=$id")->result_array();
  $this->load->library('pdf2');
  $this->pdf2->load_view('maintenance/reactive/print_external',$view_data);
  $this->pdf2->render();
  $this->pdf2->stream('external-service.pdf');
}
public function printService($id){
 $view_data['services']=$this->db->query("SELECT external_services.* ,equipments.description as item,
  providers.name as provider,assets.code as vehicle,
  jobs.card_no,jobs.id as jID,parts_suppliers.name as supplier,assets.description as make,
  parts_suppliers.id as sID,jobs.description FROM external_services
  LEFT JOIN jobs ON jobs.id=external_services.job_card_id
  LEFT JOIN assets ON assets.id=jobs.vehicle_no
  LEFT JOIN parts_suppliers ON parts_suppliers.id=external_services.supplier_id
  LEFT JOIN providers ON external_services.service_provider_id=providers.id
  LEFT JOIN equipments ON equipments.id=external_services.stock_id
  WHERE external_services.id=$id")->result_array();
 $view_data['jobs_card_dropdown'] = $this->Jobs_model->get_all_where(array("deleted" => 0))->result();
 $view_data['suppliers_dropdown']=$this->Parts_suppliers_model->get_all_where(array("deleted" => 0))->result();
 $this->load->library('pdf2');
 $this->pdf2->load_view('maintenance/reactive/print_service',$view_data);
 $this->pdf2->render();
 $this->pdf2->stream("service_external.pdf");

}
public function print_form($id){
  $view_data['jobs_card_dropdown'] = $this->Jobs_model->get_all_where(array("deleted" => 0))->result();
  $view_data['spare_parts_dropdown'] = $this->Equipments_model->get_all_where(array("deleted" => 0))->result();
  $view_data['services']=$this->db->query("SELECT spares.*,assets.code,jobs.card_no,
    equipments.description as spare,jobs.description FROM spares
    LEFT JOIN jobs ON jobs.id=spares.job_card_id 
    LEFT JOIN assets ON assets.id=jobs.vehicle_no
    LEFT JOIN equipments ON equipments.id=spares.spare_id
    WHERE spares.id=$id")->result_array();
  $this->template->rander('maintenance/reactive/print_form',$view_data); 
}
public function index_job(){
 $view_data['all_details'] = $this->Jobs_model->get_reactive_details();
 $this->template->rander("maintenance/reactive/job_card_index", $view_data);
}
public function job_card(){
  $job_id = $this->input->post('id');
  $view_data['tasks_info'] = $this->Job_tasks_model->get_details();
  $view_data['job_info'] = $this->Jobs_model->get_one($job_id);
  $view_data['services_dropdown'] = $this->Service_types_model->get_all_where(array("deleted" => 0))->result();
  $view_data['service_types_dropdown'] = $this->Job_services_model->get_all_where(array("deleted" => 0))->result();
  $view_data['inspections_dropdown'] = $this->Inspections_model->get_all_where(array("deleted" => 0))->result();
  $view_data['job_types_dropdown'] = $this->Job_types_model->get_all_where(array("deleted" => 0))->result();
  $view_data['vehicles_dropdown'] = $this->Assets_model->get_all_where(array("deleted" => 0))->result();
  $view_data['jobs_status_dropdown'] = $this->Jobs_status_model->get_all_where(array("deleted" => 0))->result();
  $view_data['sage_staff_dropdown'] = $this->Employees_model->get_all_where(array("deleted" => 0))->result();
  $view_data['providers_dropdown'] = $this->Parts_suppliers_model->get_all_where(array("deleted" => 0))->result(); 
  $view_data['fuel_dropdown'] = $this->Fuel_balances_model->get_all_where(array("deleted" => 0))->result();
  $this->template->rander('maintenance/reactive/job_card_form',$view_data); 
}
public function save(){
  
  if(!empty($_FILES['picture']['name'])){
    $config['upload_path'] = 'uploads/images/';
    $config['allowed_types'] = 'jpg|jpeg|png|gif|pdf|doc|docx|xls|xlsx|csv|txt|rtf|html|zip|mp3|wma|mpg|flv|avi';
    $config['file_name'] = $_FILES['picture']['name'];

                //Load upload library and initialize configuration
    $this->load->library('upload',$config);
    $this->upload->initialize($config);

    if($this->upload->do_upload('picture')){
      $uploadData = $this->upload->data();
      $picture = $uploadData['file_name'];
    }else{
      $picture = '';
    }
  }else{
    $picture = '';
  }
  
  $partArr = $this->input->post('part_name');
  $qntyArr = $this->input->post('quantity');
  $costArr = $this->input->post('cost');
  if(!empty($partArr)){
    for($i = 0; $i < count($partArr); $i++){
      if(!empty($partArr[$i])){
        $part_name = $partArr[$i];
        $qnty = $qntyArr[$i];
        $cost = $costArr[$i];
        
      }
    }
  }
  
  $miles_reading='';
  $km_reading='';
  $hours='';
  $internal_provider='';
  $external_provider='';
  if($this->input->post('km_reading')){
   $km_reading = $this->input->post('km_reading');
 }
  if($this->input->post('miles_reading')){
   $miles_reading = $this->input->post('miles_reading');
 }
 if($this->input->post('hours')){
  $hours = $this->input->post('hours');
}
if($this->input->post('internal_provider')){
 $internal_provider= $this->input->post('internal_provider');
}
if($this->input->post('external_provider')){
 $external_provider= $this->input->post('external_provider');
}
$data = array(
 "vehicle_no" => $this->input->post('vehicle_no'),
 "time_in" => $this->input->post('time_in'),
 "km_reading" => $km_reading ,
 "miles_reading" => $miles_reading ,
 "labour" => $this->input->post('labour'),
 "labour_cost" => $this->input->post('labour_cost'),
 "description" => $this->input->post('description'),
 "completion_date" => $this->input->post('completion_date'),
 "fuel_balance" => $this->input->post('fuel_balance'),
 "fuel_balance" => $this->input->post('fuel_balance'),
 "supplier_id" => $this->input->post('supplier_id'),
 "job_type_id" => $this->input->post('job_type_name'),
 "hours" => $hours,
 "time_out" => $this->input->post('time_out'),
 "actual_date" => $this->input->post('actual_date'),
 "track_by" => $this->input->post('track_by'),
 "service_type_id" => $this->input->post('service_type_id'),
 "provider" => $this->input->post('provider'),
 "part_name" => json_encode($partArr),
 "total" =>  0,
 "quantity" => json_encode($qntyArr),
 "cost" => json_encode($costArr),
 "internal_provider" => $internal_provider,
 "external_provider" => $external_provider,
 "picture" => $picture,
 "reactive" => 1,
'next_time_km' => $this->input->post('next_time_km'),
 'next_time_miles' => $this->input->post('next_time_miles'),
 'next_service_date' => $this->input->post('next_service_date'),
 );

$data = $this->db->insert('jobs', $data);
$last_id = $this->db->insert_id();
$model = $this->db->query("SELECT assets.code,jobs.* FROM jobs
 LEFT JOIN assets ON assets.id=jobs.vehicle_no WHERE jobs.id=$last_id")->row_array();
$card = array("card_no" => substr('ESL-' . $last_id . '-' . $model['code'], 0, 20));
$mileage=array("job_km_readings" => $model['km_reading'],"job_miles_readings" => $model['miles_reading'],
  "job_machine_hours" => $model['hours'],"next_time_km" => $model['next_time_km'],"next_time_miles" => $model['next_time_miles'],"next_service_date" => $model['next_service_date']);
$this->db->where('id', $last_id)->update('jobs', $card);
$this->db->where('id', $model['vehicle_no'])->update('assets', $mileage);
return redirect(base_url('reactive'));
}
public function update_checklist(){


           if (!empty($_FILES['picture']['name'])) {
               $config['upload_path'] = 'uploads/images/';
               $config['allowed_types'] = 'jpg|jpeg|png|gif|pdf|doc|docx|xls|xlsx|csv|txt|rtf|html|zip|mp3|wma|mpg|flv|avi';
               $config['file_name'] = $_FILES['picture']['name'];
               //Load upload library and initialize configuration
               $this->load->library('upload', $config);
               $this->upload->initialize($config);

               if ($this->upload->do_upload('picture')) {
                   $uploadData = $this->upload->data();
                   $picture = $uploadData['file_name'];
               } else {
                   $picture = '';
               }
           } else {
               $picture = '';
           }
           $inspection = $this->input->post('inspection_id');
           $done_by = $this->input->post('done_by');
           $status = $this->input->post('status_id');
           $tosave = [];
           for ($i = 1; $i <= count($inspection); $i++) {
               array_push($tosave, ['items' => array("inspection_id" => $inspection[$i][0], "user" => $done_by[$i][0], "satus" => $status[$i][0])]);
           }
           $data = array("application_data" => json_encode($tosave), "status" => "Completed", "picture" => $picture);
           $data2 = array("application_data" => json_encode($tosave),"picture" => $picture);
    if(isset($_POST['submit'])) {
        $this->db->where('id', $this->input->post('id'));
        $this->db->update('jobs', $data);
    }
    else{
        $this->db->where('id', $this->input->post('id'));
        $this->db->update('jobs', $data2);
       }

    return redirect(base_url('reactive'));
}
}
