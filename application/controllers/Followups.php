<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require_once("Pre_loader.php");

class Followups extends Pre_loader
{

    /**
     * Get All Data from this method.
     *
     * @return Response
     */

    public function __construct()
    {
      parent::__construct();


    }

    public function index()
    {
      
      $view_data['all_details'] = $this->Followups_model->getDetails();
      $this->template->rander("maintenance/preventive/follow_index",$view_data);
    }

    public function checklist_form(){
      $picture='';
    $view_data['vehicles_dropdown'] = $this->Assets_model->get_all_where(array("deleted" => 0))->result();
    $this->template->rander("maintenance/preventive/add_checklist",$view_data);
    }

    public function add(){
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

      $data=array(
      'mileage' => $this->input->post('mileage'),
      'date' => $this->input->post('date'),
      'vehicle_id' => $this->input->post('vehicle_id'),
      'measurement' => $this->input->post('measurement'),
      'checklist' => $picture,
      );
      $this->Followups_model->add_followups($data);
      return redirect(base_url().'followups','refresh');
    }
    public function show($id){
       $view_data['followups']=$this->Followups_model->details($id);
       $this->template->rander('maintenance/preventive/show_checklist',$view_data);
    }
  public function checklist_range(){
        $this->template->rander('maintenance/preventive/checklist_form_range');
  }
    public function reports(){

        $view_data['dates'] = array('from' =>$this->input->post('start_date'),'to'=>$this->input->post('end_date'));
        $view_data['checklists'] = $this->db->query("SELECT followups.*,assets.code FROM followups LEFT JOIN assets ON assets.id=followups.vehicle_id
        WHERE (followups.created BETWEEN '{$this->input->post('start_date')}' AND '{$this->input->post('end_date')}')")->result();

      $this->template->rander("maintenance/preventive/checklist_index",$view_data);
    }
    public function print_report($start_date,$end_date){

        $view_data['checklists'] =  $this->db->query("SELECT followups.*,assets.code FROM followups LEFT JOIN assets ON assets.id=followups.vehicle_id
        WHERE (followups.created BETWEEN '{$start_date}' AND '{$end_date}')")->result();

        $this->load->library('pdf2');
        $this->pdf2->load_view('maintenance/preventive/print_checklist', $view_data);
        $this->pdf2->render();
        $this->pdf2->stream('checklists.pdf');

    }

    public function extract_checklist($start_date,$end_date)
    {
        $this->load->library("excel");
        $object = new PHPExcel();

        $object->setActiveSheetIndex(0);

        $table_columns = array("Vehicle", "Mileage", "Date");

        $column = 0;

        foreach($table_columns as $field)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
            $column++;
        }

        $employee_data =$this->db->query("SELECT followups.*,assets.code FROM followups LEFT JOIN assets ON assets.id=followups.vehicle_id
        WHERE (followups.created BETWEEN '{$start_date}' AND '{$end_date}')")->result();


        $excel_row = 2;

        foreach($employee_data as $row)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->code);
            $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->mileage .' '. $row->measurement);
            $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->date);

            $excel_row++;
        }

        $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="Checklists Data.xls"');
        $object_writer->save('php://output');
    }
}
