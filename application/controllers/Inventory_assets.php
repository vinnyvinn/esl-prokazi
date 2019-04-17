<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once("Pre_loader.php");

class Inventory_assets extends Pre_loader {

   /**
    * Get All Data from this method.
    *
    * @return Response
   */

   public function __construct() {
    parent::__construct();

    
  }

  public function index(){


   $data['assets'] = $this->Assets_inventory_model->getDetails();
   $data['vendors'] = $this->SAGE_DB()->query("SELECT * FROM Vendor")->result();
   $data['users'] = $this->db->query("SELECT * FROM users")->result();
   $data['locations'] = $this->SAGE_DB()->query("SELECT * FROM _btblFALocation")->result();
   $this->template->rander("assets_inventory/index",$data);
 }


 public function add_asset()
 {
  
  $custodian = $this->input->post('custodian');
  $data = array(
   'card_no' => $this->input->post('card_no'),
   'title' => $this->input->post('title'),
   'model_no' => $this->input->post('model_no'),
   'serial_no' => $this->input->post('serial_no'),
   'location' => $this->input->post('location'),
   'category' => $this->input->post('category'),
   'custodian' => $custodian,
   'assign_by' => $this->login_user->id,
   'department' => $this->input->post('department'),
   'purchase_date' => $this->input->post('purchase_date'),
   'purchase_cost' => $this->input->post('purchase_cost'),
   'supplier' => $this->input->post('supplier'),
   'updated_at' => date('Y-m-d H:i:s'),
   'created_at' => date('Y-m-d H:i:s'),
   );


  $this->db->insert('inventory_assets',$data);
  $inserted = $this->db->insert_id();

  $to = $this->db->query("SELECT * FROM users WHERE id=$custodian")->row_array();
  $hr = $this->db->query("SELECT * FROM users WHERE job_title like '%Corporate Support : HR & Admin Manager%'")->row_array();
  $email_asset = array(
    'asset' => $this->input->post('title'),
    'to' => $to['first_name'] .' '.$to['last_name'],
    'to_email' => $to['email'],
    'from' => $this->login_user->first_name. ' '.$this->login_user->last_name,
    'from_email' => $this->login_user->email,
    'cc' => $hr['first_name'] .' '.$hr['last_name'],
    'cc_email' => $hr['email'],
    'asset_id' => $inserted,
    'asset_url' => get_uri('inventory_assets/view/'.$inserted),
  );

  $this->_mail_asset($email_asset);
  return redirect(base_url('inventory_assets'));

}

public function view_form($id){

$user = $this->db->query("SELECT * FROM inventory_assets WHERE id=$id")->row_array();

$custodian = $user['custodian'];
$from = $user['assign_by'];
$view_data['id'] = $id;
$view_data['asset'] = $this->db->query("SELECT * FROM inventory_assets WHERE id=$id")->row_array();
$view_data['custodian'] = $this->db->query("SELECT * FROM users WHERE id=$custodian")->row_array();
$view_data['from'] = $this->db->query("SELECT * FROM users WHERE id=$from")->row_array();
$view_data['hr'] = $this->db->query("SELECT * FROM users WHERE job_title like '%Corporate Support : HR & Admin Manager%'")->row_array();
$view_data['assets'] = $this->db->query("SELECT * FROM inventory_assets where custodian={$user['custodian']}")->result();
$this->template->rander('assets_inventory/add_asset',$view_data);
}

public function print_form($id){
$user = $this->db->query("SELECT * FROM inventory_assets WHERE id=$id")->row_array();
$custodian = $user['custodian'];
$from = $user['assign_by'];
$view_data['asset'] = $this->db->query("SELECT * FROM inventory_assets WHERE id=$id")->row_array();
$view_data['custodian'] = $this->db->query("SELECT * FROM users WHERE id=$custodian")->row_array();
$view_data['from'] = $this->db->query("SELECT * FROM users WHERE id=$from")->row_array();
$view_data['hr'] = $this->db->query("SELECT * FROM users WHERE job_title like '%Corporate Support : HR & Admin Manager%'")->row_array();
$this->template->rander('assets_inventory/print_form',$view_data);
}

public function save_changes($asset_id){
     $custodian = $this->input->post('custodian');

  $data = array(
   'card_no' => $this->input->post('card_no'),
   'title' => $this->input->post('title'),
   'model_no' => $this->input->post('model_no'),
   'serial_no' => $this->input->post('serial_no'),
   'location' => $this->input->post('location'),
   'category' => $this->input->post('category'),
   'custodian' => $custodian,
   'department' => $this->input->post('department'),
   'supplier' => $this->input->post('supplier'),
   'status' => 0,
   'assign_by' => $this->login_user->id,
   'updated_at' => date('Y-m-d H:i:s'),
   'created_at' => date('Y-m-d H:i:s'),
 );


  $this->db->where('id',$asset_id);
  $this->db->update('inventory_assets',$data);
  $order = $this->db->query("SELECT * FROM inventory_assets ORDER BY updated_at  DESC LIMIT 1")->row();
  $asset_no = $order->title;


  if($asset_no){

           $supplier_id =$this->SAGE_DB()->query("SELECT * FROM Vendor WHERE Name like '%$order->supplier%'")->row()->DCLink;
      $location_id = $this->SAGE_DB()->query("SELECT * FROM _btblFALocation WHERE cLocationDesc like '%$order->location%'")->row()->idLocationNo;

         $this->SAGE_DB()->query("UPDATE _btblFAAsset SET cAssetCode='$order->card_no',cAssetDesc='$order->title',iSupplierNo=$supplier_id,
      ucFACustodian=$order->custodian,iLocationNo=$location_id WHERE cAssetDesc like '%$asset_no%'");



   }
  if($custodian) {
      $to = $this->db->query("SELECT * FROM users WHERE id=$custodian")->row_array();
      $hr = $this->db->query("SELECT * FROM users WHERE job_title like '%Corporate Support : HR & Admin Manager%'")->row_array();
      $email_asset = array(
          'asset' => $this->input->post('title'),
          'to' => $to['first_name'] . ' ' . $to['last_name'],
          'to_email' => $to['email'],
          'from' => $this->login_user->first_name . ' ' . $this->login_user->last_name,
          'from_email' => $this->login_user->email,
          'cc' => $hr['first_name'] . ' ' . $hr['last_name'],
          'cc_email' => $hr['email'],
          'asset_id' => $this->input->post('id'),
          'asset_url' => get_uri('inventory_assets/view/' . $this->input->post('id')),
      );

      $this->_mail_asset($email_asset);
  }
  return redirect(base_url('inventory_assets'));
}
public function view($id){
  $asset_info = $this->Assets_inventory_model->get_assets_by_id($id);
  $custodian ='';
  $asset_info->custodian ? $custodian = $this->db->query("SELECT * FROM inventory_assets WHERE custodian=$asset_info->custodian")->row()->status :'';
  $view_data['status'] = $custodian;
  $view_data['assets'] = $asset_info;
  $view_data['supplier'] = $asset_info->asset_no ? $this->SAGE_DB()->query("SELECT Name FROM Vendor WHERE DCLink = $asset_info->asset_no")->row_array()['Name'] : '';
  $view_data['user'] = $asset_info->custodian ? $this->db->query("SELECT first_name,last_name FROM users WHERE id = $asset_info->custodian")->row_array() :'';
  $this->template->rander("assets_inventory/single",$view_data);
}
public function import_assets(){
 $existing = $this->db->query('SELECT asset_no from inventory_assets')->result_array();
 $existing = array_map(function ($item) {
  return $item['asset_no'];
}, $existing);

// var_dump($existing);
// die();
 $SAGEQuery = "SELECT idAssetNo,cAssetCode,cAssetDesc,iLocationNo,dPurchaseDate,fPurchaseValue,iSupplierNo FROM _btblFAAsset
 WHERE iAssetTypeNo = 3 AND idAssetNo NOT IN ( '" . implode( "', '" , $existing ) . "' )";
// var_dump($this->SAGE_DB()->query($SAGEQuery)->result_array());
// die();
 $fromSage = $this->SAGE_DB()->query($SAGEQuery)->result_array();
 $fromSage = array_map(function ($item) {
  return [
    "card_no" => $item['cAssetCode'],
    "asset_no" => $item['idAssetNo'],
    "title" => $item['cAssetDesc'],
    "location" => $item['iLocationNo'],
    "purchase_date  " => $item['dPurchaseDate'],
    "purchase_cost" => $item['fPurchaseValue'],
    "supplier" => $item['iSupplierNo'],
  ];
}, $fromSage);


 if(!empty($fromSage)){
  $this->db->insert_batch('inventory_assets', $fromSage);
  return redirect('inventory_assets','refresh'); 
}

else
{
  return redirect('inventory_assets','refresh'); 
}
}

public function accept_asset($id){
       $status = ['status' => 1];
       $this->db->where('id',$id);
       $this->db->update('inventory_assets',$status);
       return redirect(base_url('inventory_assets/view_form/'.$id));
}

    public function reject_asset($id){
        $status = ['status' => 2];
        $this->db->where('id',$id);
        $this->db->update('inventory_assets',$status);
        $user = $this->db->query("SELECT inventory_assets.*,CONCAT(users.first_name,' ',users.last_name) as username,users.email FROM inventory_assets
                          LEFT JOIN users ON users.id=inventory_assets.assign_by
                          WHERE inventory_assets.id=$id")->row();
        $user_id = $user->custodian;
        $custodian = $this->db->query("SELECT CONCAT(first_name,' ',last_name) as custodian,email FROM users WHERE id=$user_id")->row();
        var_dump($custodian);
        $email_data = array(
            'assign_by' => $user->username,
            'assign_by_email' => $user->email,
            'asset_id' => $user->id,
            'asset_title' => $user->title,
            'custodian' => $custodian->custodian,
            'custodian_email' => $custodian->email,
            'asset_url' => get_uri('inventory_assets/edit/'.$user->id),
        );
        $this->_mail_asset_sender($email_data);
        return redirect(base_url('inventory_assets'));
    }

    public function _mail_asset_sender($email_data){
        $email_template = $this->Email_templates_model->get_final_template("ict_asset_decline");

        $parser_data["EMAIL"] =$email_data['custodian_email'] ;
        $parser_data["USER_NAME"] =  $email_data['assign_by'];
        $parser_data["ASSET_ID"] =  $email_data['asset_id'];
        $parser_data["ASSET_URL"] =  $email_data['asset_url'];
        $parser_data["ASSET_TITLE"] =  $email_data['asset_title'];
        $parser_data["CUSTODIAN"] =  $email_data['custodian'];
        $parser_data["SIGNATURE"] = $email_template->signature;
        $message = $this->parser->parse_string($email_template->message, $parser_data, TRUE);

        send_app_mail($email_data['assign_by_email'], $email_template->subject, $message);


    }


public function edit($id){
  $asset_info = $this->Assets_inventory_model->get_assets_by_id($id);
  $view_data['departments'] = $this->db->query("SELECT * FROM departments")->result();
  $view_data['assets'] =$asset_info;
  $view_data['supplier'] = $asset_info->asset_no ? $this->SAGE_DB()->query("SELECT Name,DCLink FROM Vendor WHERE DCLink = $asset_info->asset_no")->row_array() : '';
  $view_data['user'] = $asset_info->custodian ? $this->db->query("SELECT first_name,last_name FROM users WHERE id = $asset_info->custodian")->row_array() : '';
  $view_data['vendors'] = $this->SAGE_DB()->query("SELECT * FROM Vendor")->result();
  $view_data['locations'] = $this->SAGE_DB()->query("SELECT * FROM _btblFALocation")->result();
  $view_data['users'] = $this->db->query("SELECT * FROM users")->result();
  $this->template->rander("assets_inventory/edit_form",$view_data);
}
public function sage_items(){
  echo "<pre>";
  var_dump($this->SAGE_DB()->query('SELECT * FROM _btblFAAsset')->result());
  die();
  $sage['assets'] = $this->SAGE_DB()->query('SELECT * FROM _btblFAAsset')->result();
  $this->template->rander("assets_inventory/index",$sage);
}
public function asset_edit($id)
{
  $data = $this->Assets_model->get_assets_by_id($id);
  echo json_encode($data);
}
public function asset_update()
{

 $data = array(
   'code' => $this->input->post('code'),
   'year_of_reg' => $this->input->post('year_of_reg'),
   'year_of_make' => $this->input->post('year_of_make'),
   'chasis_no' => $this->input->post('chasis_no'),
   'engine_no' => $this->input->post('engine_no'),
   'description' => $this->input->post('description'),
   'driver_id' => $this->input->post('driver_id'),
   'warranty' => $this->input->post('warranty'),
   'next_time_km' => $this->input->post('next_time_km'),
   'next_time_miles' => $this->input->post('next_time_miles'),
   'make' => $this->input->post('make'),
   'km_reading' => $this->input->post('km_reading'),
   'miles_reading' => $this->input->post('miles'),
   'machine_hours' => $this->input->post('hours'),
   'updated_at' => date("Y-m-d H:i:s"),
   
 );
 $this->Assets_model->assets_update(array('id' => $this->input->post('id')), $data);
 // $query = $this->db->query('SELECT id FROM assets ORDER BY updated_at DESC LIMIT 1');  
 // $result = $query->row_array()['id']; 
 // $variables = $this->db->query("SELECT assets.code,assets.next_time_km,assets.next_time_miles,employees.* FROM assets
 //  LEFT JOIN employees ON employees.id= assets.driver_id WHERE assets.id=$result")->row_array();
 // if($variables['next_time_km'] <= 200 || $variables['next_time_miles'] <=200){
 //  $this->tech_mail($variables);
 // }
 echo json_encode(array("status" => TRUE));
 

}
public function asset(){
 echo "<pre>";

 $dummy= $this->SAGE_DB()->query("SELECT  *  FROM _btblFAAsset WHERE iAssetTypeNo=3 AND 1435 <= DATEDIFF(day,dPurchaseDate, CURRENT_TIMESTAMP)")->result();
 var_dump($dummy);
}
public function asset_disposal_list() {
  $view_data['disposals'] = $this->SAGE_DB()->query("SELECT * FROM _btblFAAsset WHERE cAssetCode in('126','287')")->result();
 $this->template->rander('assets_inventory/disposal_index',$view_data);
}
    public function asset_due_disposal() {

       $view_data['disposals'] =  $this->SAGE_DB()->query("SELECT  *  FROM _btblFAAsset WHERE iAssetTypeNo=3 AND 1435 <= DATEDIFF(day,dPurchaseDate, CURRENT_TIMESTAMP)")->result();
       $this->template->rander('assets_inventory/due_disposal_index',$view_data);
    }
    public function print_disposal_list(){



        $view_data['disposals'] = $this->SAGE_DB()->query("SELECT idAssetNo,cAssetCode,cAssetDesc,dSellingDate,fSellingPrice FROM _btblFAAsset WHERE cAssetCode in('126','287')")->result();
        $this->load->library('pdf2');
        $this->pdf2->load_view('assets_inventory/reports/print_form_disposal_list', $view_data);
        $this->pdf2->render();
        $this->pdf2->stream('disposallist.pdf');
    }

    public function extract_disposal_list()
    {
        $this->load->library("excel");
        $object = new PHPExcel();

        $object->setActiveSheetIndex(0);

        $table_columns = array("Code", "Description", "Selling Date", "Selling Price");
        $column = 0;

        foreach($table_columns as $field)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
            $column++;
        }

        $employee_data = $this->SAGE_DB()->query("SELECT idAssetNo,cAssetCode,cAssetDesc,dSellingDate,fSellingPrice FROM _btblFAAsset WHERE cAssetCode in('126','287')")->result();

        $excel_row = 2;

        foreach($employee_data as $row)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->cAssetCode);
            $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->cAssetDesc);
            $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->dSellingDate);
            $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->fSellingPrice);
            $excel_row++;
        }

        $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="Asset Disposal List Data.xls"');
        $object_writer->save('php://output');

    }

    public function print_due_disposal(){
        $view_data['disposals'] = $this->SAGE_DB()->query("SELECT  *  FROM _btblFAAsset WHERE iAssetTypeNo=3 AND 1435 <= DATEDIFF(day,dPurchaseDate, CURRENT_TIMESTAMP)")->result();

        $this->load->library('pdf2');
        $this->pdf2->load_view('assets_inventory/reports/print_due_disposal_list', $view_data);
        $this->pdf2->render();
        $this->pdf2->stream('duedisposal.pdf');
    }

    public function extract_due_disposal()
    {
        $this->load->library("excel");
        $object = new PHPExcel();

        $object->setActiveSheetIndex(0);

        $table_columns = array("Code", "Description", "Purchase Date", "Purchase Price");

        $column = 0;

        foreach($table_columns as $field)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
            $column++;
        }

        $employee_data =$this->SAGE_DB()->query("SELECT  *  FROM _btblFAAsset WHERE iAssetTypeNo=3 AND 1435 <= DATEDIFF(day,dPurchaseDate, CURRENT_TIMESTAMP)")->result();
        $excel_row = 2;

        foreach($employee_data as $row)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->cAssetCode);
            $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->cAssetDesc);
            $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, date('d-m-Y',strtotime($row->dPurchaseDate)));
            $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->fPurchaseValue);
            $excel_row++;
        }

        $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="Assets Due Disposal Data.xls"');
        $object_writer->save('php://output');

    }

public function asset_delete($id)
{
  $this->Assets_model->delete_asset($id);
  echo json_encode(array("status" => TRUE));
}
public function SAGE_DB() {
  return $this->load->database('SAGE', TRUE);
}

public function _mail_asset($sender){
 $email_template = $this->Email_templates_model->get_final_template("assign_asset");

 $parser_data["TO"] =  $sender['to'];
 $parser_data["FROM"] =  $sender['from'];
 $parser_data["SENDER_EMAIL"] =  $sender['from_email'];
 $parser_data["ASSET"] =  $sender['asset'];
 $parser_data["ASSET_URL"] =  $sender['asset_url'];
 $parser_data["ASSET_ID"] =  $sender['asset_id']; 
 $parser_data["SIGNATURE"] = $email_template->signature;
 $message = $this->parser->parse_string($email_template->message, $parser_data, TRUE);

 send_app_mail($sender['to_email'], $email_template->subject, $message);
 send_app_mail($sender['cc_email'], $email_template->subject, $message);


 
}

public function reports(){
    $this->template->rander("assets_inventory/reports/form");
}

public function asset_details(){
    $start_date = $this->input->post('start_date');
    $end_date = $this->input->post('end_date');
    $view_data['dates'] = array('from' =>$start_date,'to'=>$end_date);
    $view_data['assets'] = $this->db->query("SELECT inventory_assets.*,CONCAT(users.first_name,' ',users.last_name) as username FROM inventory_assets
       LEFT JOIN  users ON users.id=inventory_assets.custodian 
        WHERE (inventory_assets.updated_at BETWEEN '$start_date' AND '$end_date')")->result();
    $this->template->rander('assets_inventory/reports/index',$view_data);
}

public function print_report($from,$to){

    $view_data['assets'] = $this->db->query("SELECT inventory_assets.*,CONCAT(users.first_name,' ',users.last_name) as username,departments.name as designation,departments.id as dept_id FROM inventory_assets
       LEFT JOIN  users ON users.id=inventory_assets.custodian 
       LEFT JOIN departments ON departments.id=inventory_assets.department
        WHERE (inventory_assets.updated_at BETWEEN '$from' AND '$to')")->result();
    $this->load->library('pdf2');
    $this->pdf2->load_view('assets_inventory/reports/print_form', $view_data);
    $this->pdf2->render();
    $this->pdf2->stream('assets.pdf');
}

    public function excel_report($from,$to)
    {
        $this->load->library("excel");
        $object = new PHPExcel();

        $object->setActiveSheetIndex(0);

        $table_columns = array("Code", "Title","Category","Model No", "Serial No","Department","Supplier","Description","Custodian","Date");
        $column = 0;

        foreach($table_columns as $field)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
            $column++;
        }

        $employee_data =$this->db->query("SELECT inventory_assets.*,CONCAT(users.first_name,' ',users.last_name) as username,departments.name as designation,departments.id as dept_id FROM inventory_assets
       LEFT JOIN  users ON users.id=inventory_assets.custodian 
       LEFT JOIN departments ON departments.id=inventory_assets.department
        WHERE (inventory_assets.updated_at BETWEEN '$from' AND '$to')")->result();

        $excel_row = 2;

        foreach($employee_data as $row)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->card_no);
            $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->title);
            $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->category);
            $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->model_no);
            $object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row->serial_no);
            $object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $row->designation);
            $object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, $row->username);
            $object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, $row->title);
            $object->getActiveSheet()->setCellValueByColumnAndRow(8, $excel_row, $row->custodian ? $this->db->query("SELECT CONCAT(first_name,' ',last_name) as nickname FROM users WHERE id={$row->custodian}")->row()->nickname :'');
            $object->getActiveSheet()->setCellValueByColumnAndRow(9, $excel_row, date('d-m-Y',strtotime($row->updated_at)));
            $excel_row++;
        }

        $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="Inventory Assets Data.xls"');
        $object_writer->save('php://output');
}

public function view_asset($id){
       $view_data['assets'] = $this->db->query("SELECT inventory_assets.*,CONCAT(users.first_name,' ',users.last_name) as username,departments.name as designation,departments.id as dept_id FROM inventory_assets
       LEFT JOIN  users ON users.id=inventory_assets.custodian 
       LEFT JOIN departments ON departments.id=inventory_assets.department
        WHERE inventory_assets.id=$id")->row();
       $this->template->rander("assets_inventory/asset_details",$view_data);
}

}
