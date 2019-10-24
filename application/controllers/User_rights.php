<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require_once("Pre_loader.php");

class User_rights extends Pre_loader
{

    /**
     * Get All Data from this method.
     *
     * @return Response
     */

    public function __construct()
    {
        parent::__construct();


        $this->load->library('excel');

    }

    public function index()
    {

        $view_data['user_groups'] = $this->db->query("SELECT * FROM roles WHERE deleted=0")->result();
        $this->template->rander("rights/form",$view_data);
    }

    public function details(){
        $view_data['role_type'] =$this->input->post('user_group');
        $view_data['roles'] = $this->db->query("SELECT users.*,roles.title,roles.permissions FROM users
         LEFT JOIN roles ON roles.id=users.role_id WHERE roles.id={$this->input->post('user_group')}")->result();
        $this->template->rander('rights/index',$view_data);
    }
public function print_form($role_type){

   $view_data['roles'] = $this->db->query("SELECT users.*,roles.title,roles.permissions FROM users
         LEFT JOIN roles ON roles.id=users.role_id WHERE roles.id={$role_type}")->result();

    $this->load->library('pdf2');
    $this->pdf2->load_view('rights/print_form', $view_data);
    $this->pdf2->render();
    $this->pdf2->stream('roles.pdf');
}

    public function print_u($role_type)
    {

        $this->load->library("excel");
        $object = new PHPExcel();

        $object->setActiveSheetIndex(0);

        $table_columns = array('Username', "Email", "Permissions");

        $column = 0;

        foreach($table_columns as $field)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
            $column++;
        }

        $employee_data =$this->db->query("SELECT users.*,roles.title,roles.permissions FROM users
         LEFT JOIN roles ON roles.id=users.role_id WHERE roles.id={$role_type}")->result();

        $excel_row = 2;
        $walla =[];

        foreach($employee_data as $row)
        {


                if (isset($row->permissions)) {
                $perms = unserialize($row->permissions);
                $search_array = $perms;

                if (array_key_exists('can_access_technical', $search_array) == 1) {

                    array_push($walla,"Can access Technical");

                }
                if (array_key_exists('can_access_legal', $search_array) == 1) {
                    array_push($walla,"Can access Legal");

                }
                if (array_key_exists('can_access_administration', $search_array) == 1) {
                    array_push($walla,"Can access Administration");

                }
                if (array_key_exists('can_access_finance', $search_array) == 1) {
                    array_push($walla,"Can access Finance");

                }
                if (array_key_exists('can_access_invoice', $search_array) == 1) {
                    array_push($walla,"Can access Invoice");

                }
                if (array_key_exists('can_access_defferals', $search_array) == 1) {
                    array_push($walla,"Can access Defferals");

                }
                if (array_key_exists('can_access_team', $search_array) == 1) {
                    array_push($walla,"Can access Team Members");

                }
                if (array_key_exists('can_view_knowledgebase', $search_array) == 1) {
                    array_push($walla,"Can access Knowledgebase");

                }
                if (array_key_exists('can_access_timecard', $search_array) == 1) {
                    array_push($walla,"Can access Timesheets");

                }
                if (array_key_exists('can_access_leads', $search_array) == 1) {
                    array_push($walla,"Can access Leads");

                }
                if (array_key_exists('can_access_outages', $search_array) == 1) {
                    array_push($walla,"Can access Outages");

                }
                if (array_key_exists('can_view_checklists', $search_array) == 1) {
                    array_push($walla,"Can view Checklists");

                }

            }

            $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->first_name .' '.$row->last_name);
            $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->email);
            $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row,implode(',',$walla));
            $excel_row++;
        }

        $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="User Rights Data.xls"');
        $object_writer->save('php://output');
}

}
