<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once("Pre_loader.php");
class Fuel_reports extends Pre_loader
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


      $users = $this->db->query("SELECT * FROM employees")->result_array();
      $arrayData=[];
      foreach ($users as $key => $user) {
        $id=$user['id'];
        $data['user']= $user;
        //$data['vehicle']=$this->db->query("SELECT * FROM assets WHERE driver_id=$id")->result_array();
        $data['details'] =$this->db->query("SELECT fuels.*,fuels.created as date_created,parts_suppliers.name as supplier,jobs.*,assets.*,spares.*,spares.stock_name as stock,
          other_expenses.name as expenses,assets.code as vehicle FROM fuels
          LEFT JOIN other_expenses ON other_expenses.id=fuels.expense_id
          LEFT JOIN assets ON assets.id=fuels.vehicle_id
          LEFT JOIN parts_suppliers ON parts_suppliers.id=fuels.supplier_id 
          LEFT JOIN jobs ON jobs.vehicle_no=fuels.vehicle_id
          LEFT JOIN spares ON spares.job_card_id=jobs.id 
          WHERE fuels.staff_id=$id
          ")->result_array();

        $total = $this->db->query("SELECT fuels.*,SUM(fuels.total) as totalcost,parts_suppliers.name as supplier,
          other_expenses.name as expenses,assets.code as vehicle,SUM(fuels.expense_cost) as totalexpense FROM fuels
          LEFT JOIN other_expenses ON other_expenses.id=fuels.expense_id
          LEFT JOIN assets ON assets.id=fuels.vehicle_id
          LEFT JOIN parts_suppliers ON parts_suppliers.id=fuels.supplier_id WHERE fuels.staff_id=$id
          GROUP BY fuels.total
          ")->row_array();

          
        $data['totalvalue']=$total['totalcost'];
        $data['totalexpense']=$total['totalexpense'];
        array_push($arrayData,$data);
        
      }
     
     
      $view_data['all_data']=$arrayData;
      $this->template->rander("maintenance/reports/fuel/index", $view_data);
    }
    public function print_report(){
     $users = $this->db->query("SELECT * FROM employees")->result_array();
     $arrayData=[];
     foreach ($users as $key => $user) {
      $id=$user['id'];
      $data['user']= $user;
       $data['details']=$this->db->query("SELECT fuels.*,parts_suppliers.name as supplier,
          other_expenses.name as expenses,assets.code as vehicle FROM fuels
          LEFT JOIN other_expenses ON other_expenses.id=fuels.expense_id
          LEFT JOIN assets ON assets.id=fuels.vehicle_id
          LEFT JOIN parts_suppliers ON parts_suppliers.id=fuels.supplier_id WHERE fuels.staff_id=$id
          GROUP BY fuels.total")->result_array();
        $total=$this->db->query("SELECT fuels.*,SUM(fuels.total) as totalcost,parts_suppliers.name as supplier,
          other_expenses.name as expenses,assets.code as vehicle,SUM(fuels.expense_cost) as totalexpense FROM fuels
          LEFT JOIN other_expenses ON other_expenses.id=fuels.expense_id
          LEFT JOIN assets ON assets.id=fuels.vehicle_id
          LEFT JOIN parts_suppliers ON parts_suppliers.id=fuels.supplier_id WHERE fuels.staff_id=$id
          GROUP BY fuels.staff_id")->row_array();
         $data['totalvalue']=$total['totalcost'];
        $data['totalexpense']=$total['totalexpense'];
        
      array_push($arrayData,$data);
      
    }
    
    $view_data['all_data']=$arrayData;
    $this->load->library('pdf2');
    $this->pdf2->load_view('maintenance/reports/fuel/print_form', $view_data);
    $this->pdf2->render();
    $this->pdf2->stream('fuelreports.pdf');
    
  }

    public function extract_fuel()
    {
        $this->load->library("excel");
        $object = new PHPExcel();

        $object->setActiveSheetIndex(0);

        $table_columns = array("Vehicle", "Date", "Invoice No", "Litres","Pump Price","Cost","Mileage","Others","Cost");

        $column = 0;

        foreach($table_columns as $field)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
            $column++;
        }
        $users = $this->db->query("SELECT * FROM employees")->result_array();
        $arrayData=[];
        foreach ($users as $key => $user) {
            $id=$user['id'];
            $data['user']= $user;
            $data['details']=$this->db->query("SELECT fuels.*,parts_suppliers.name as supplier,
          other_expenses.name as expenses,assets.code as vehicle FROM fuels
          LEFT JOIN other_expenses ON other_expenses.id=fuels.expense_id
          LEFT JOIN assets ON assets.id=fuels.vehicle_id
          LEFT JOIN parts_suppliers ON parts_suppliers.id=fuels.supplier_id WHERE fuels.staff_id=$id
          GROUP BY fuels.total")->result_array();
            $total=$this->db->query("SELECT fuels.*,SUM(fuels.total) as totalcost,parts_suppliers.name as supplier,
          other_expenses.name as expenses,assets.code as vehicle,SUM(fuels.expense_cost) as totalexpense FROM fuels
          LEFT JOIN other_expenses ON other_expenses.id=fuels.expense_id
          LEFT JOIN assets ON assets.id=fuels.vehicle_id
          LEFT JOIN parts_suppliers ON parts_suppliers.id=fuels.supplier_id WHERE fuels.staff_id=$id
          GROUP BY fuels.staff_id")->row_array();
            $data['totalvalue']=$total['totalcost'];
            $data['totalexpense']=$total['totalexpense'];

            array_push($arrayData,$data);

        }

       // $employee_data =$arrayData;

        $excel_row = 2;
foreach ($arrayData as $d_ta) {
    foreach ($d_ta['details'] as $key => $row) {

        $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row['vehicle']);
        $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, date('d-m-Y',strtotime($row['created'])));
        $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row['invoice_no']);
        $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row['litres']);
        $object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row['price']);
        $object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $row['total']);
        $object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, $row['km_reading'] ? number_format($row['km_reading'], 2) . ' km' : number_format($row['miles_reading'] / 0.621371, 2) . ' miles');
        $object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, $row['expenses']);
        $object->getActiveSheet()->setCellValueByColumnAndRow(8, $excel_row, $row['expense_cost']);
        $excel_row++;
    }

}

        $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="Fuel Data.xls"');
        $object_writer->save('php://output');
  }
}
