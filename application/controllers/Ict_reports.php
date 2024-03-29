<?php
defined('BASEPATH') OR exit('No direct script access allowed');
ini_set('max_execution_time', 300); //300 seconds 

require_once("Pre_loader.php");

class Ict_reports extends Pre_loader {

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

            // $view_data['ticket_types_dropdown'] = $this->Ticket_types_model->get_dropdown_list(array("title"), "id");
            // $this->template->rander("checklists/reports/index", $view_data);

    $this->support_entries();
  }

  public function support_entries() {
    $this->template->rander("checklists/reports/support_entries/index");

  }
    public function support_entries_index() {
       $view_data['ticket_types'] = $this->db->query("SELECT * FROM ticket_types WHERE  deleted=0")->result();
        $this->template->rander("checklists/reports/support_entries/form",$view_data);

    }
public function  entries_details()
{


    $view_data['dates'] = array('from' => $this->input->post('start_date'), 'to' => $this->input->post('end_date'));
    $t_ks = $this->db->query("SELECT * FROM ticket_types where id={$this->input->post('ticket')}")->row();

    if ($t_ks == 'System') {

        $results = $this->db->query("SELECT * FROM support_entries WHERE ticket_id='system' AND (created_at BETWEEN '{$this->input->post('start_date')}' AND '{$this->input->post('end_date')}')")->result();
        $view_data['entries'] = $results;

        $this->template->rander('checklists/reports/support_entries/entries_index_s', $view_data);
    } else {

        $results = $this->input->post('ticket') == 0 ? $this->db->query("SELECT support_entries.*,CONCAT(users.first_name,' ',users.last_name) as username,ticket_types.title as ticket_type FROM support_entries
       LEFT JOIN  users ON users.id=support_entries.created_by 
       LEFT JOIN ticket_types ON ticket_types.id=support_entries.ticket_type_id WHERE (support_entries.created_at BETWEEN '{$this->input->post('start_date')}' AND '{$this->input->post('end_date')}')
       ORDER BY support_entries.created_at DESC")->result() : $this->db->query("SELECT support_entries.*,CONCAT(users.first_name,' ',users.last_name) as username,ticket_types.title as ticket_type FROM support_entries
       LEFT JOIN  users ON users.id=support_entries.created_by 
       LEFT JOIN ticket_types ON ticket_types.id=support_entries.ticket_type_id WHERE (support_entries.created_at BETWEEN '{$this->input->post('start_date')}' AND '{$this->input->post('end_date')}') 
       AND ticket_types.id like '%{$this->input->post('ticket')}%'
       ORDER BY support_entries.created_at DESC")->result();

        $view_data['entries'] = $results;

        $this->template->rander('checklists/reports/support_entries/entries_index', $view_data);
    }
}

    public function print_entries($from,$to)
    {
        $view_data['entries'] = $this->db->query("SELECT support_entries.*,CONCAT(users.first_name,' ',users.last_name) as username,ticket_types.title as ticket_type FROM support_entries
       LEFT JOIN  users ON users.id=support_entries.created_by 
       LEFT JOIN ticket_types ON ticket_types.id=support_entries.ticket_type_id WHERE (support_entries.created_at BETWEEN '$from' AND '$to')")->result();
        $this->load->library('pdf2');
        $this->pdf2->load_view('checklists/reports/support_entries/print_form', $view_data);
        $this->pdf2->render();
        $this->pdf2->stream('tickets.pdf');
    }
    public function print_entries_s($from,$to)
    {
        $view_data['entries'] = $this->db->query("SELECT * FROM support_entries WHERE ticket_id='system' AND (created_at BETWEEN '{$from}' AND '{$to}')")->result();
        $this->load->library('pdf2');
        $this->pdf2->load_view('checklists/reports/support_entries/print_form_s', $view_data);
        $this->pdf2->render();
        $this->pdf2->stream('tickets.pdf');
    }
    // create xlsx
    public function createXLS($from,$to) {
        // create file name
        $fileName = 'tickets-'.time().'.xlsx';
        // load excel library
        $this->load->library('excel');
        $empInfo =  $this->db->query("SELECT support_entries.*,CONCAT(users.first_name,' ',users.last_name) as username,ticket_types.title as ticket_type FROM support_entries
       LEFT JOIN  users ON users.id=support_entries.created_by 
       LEFT JOIN ticket_types ON ticket_types.id=support_entries.ticket_type_id WHERE (support_entries.created_at BETWEEN '$from' AND '$to')")->result();
        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        // set Header
        $objPHPExcel->getActiveSheet()->SetCellValue('A1', 'Title');
        $objPHPExcel->getActiveSheet()->SetCellValue('B1', 'Ticket type');
        $objPHPExcel->getActiveSheet()->SetCellValue('C1', 'Created By');
        $objPHPExcel->getActiveSheet()->SetCellValue('D1', 'Assigned To');
        $objPHPExcel->getActiveSheet()->SetCellValue('E1', 'Opened Date');
        $objPHPExcel->getActiveSheet()->SetCellValue('F1', 'Closed Date');
        $objPHPExcel->getActiveSheet()->SetCellValue('G1', 'Duration');
        $objPHPExcel->getActiveSheet()->SetCellValue('H1', 'Comments');
        // set Row
        $rowCount = 2;

        foreach ($empInfo as $element) {
            $created = new DateTime($element->created_at);
            $created_t=$created->format('d/m/y');
             $closed_date = new DateTime($element->created_at);
            $closed_date_t=$closed_date->format('d/m/y');
           $duration = '';
            $start_date=strtotime($element->created_at);
            $end_date=strtotime($element->closed_date);
            if($end_date) {
                $d_t =(($end_date/(60*60)) - ($start_date/(60*60)));
                $duration= ceil($d_t) .'hrs';
            }
            $comments = [];
            $commentss = $this->db->query("SELECT * FROM support_comments where ticket_id={$element->id}")->result();
            if ($commentss){
                foreach ($commentss as $comm){
                    $comments[]=$comm->description;
                }
            }
            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element->title);
            $objPHPExcel->getActiveSheet()->SetCellValue('B' . $rowCount, $element->ticket_type);
            $objPHPExcel->getActiveSheet()->SetCellValue('C' . $rowCount, $element->username);
            $objPHPExcel->getActiveSheet()->SetCellValue('D' . $rowCount, $element->assign_to ? $this->db->query("select * from users where id={$element->assign_to}")->row()->first_name.' '.$this->db->query("select * from users where id={$element->assign_to}")->row()->last_name : '');
            $objPHPExcel->getActiveSheet()->SetCellValue('E' . $rowCount, $created_t);
            $objPHPExcel->getActiveSheet()->SetCellValue('F' . $rowCount, $closed_date_t);
            $objPHPExcel->getActiveSheet()->SetCellValue('G' . $rowCount, $duration);
            $objPHPExcel->getActiveSheet()->SetCellValue('H' . $rowCount, implode(',',$comments));
            $rowCount++;
        }
//        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
//        $objWriter->save(ROOT_UPLOAD_IMPORT_PATH.$fileName);
//        // download file
//        header("Content-Type: application/vnd.ms-excel");
//        redirect(HTTP_UPLOAD_IMPORT_PATH.$fileName);

        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $objWriter->save($fileName);
        // download file
        header("Content-Type: application/vnd.ms-excel");
        redirect(site_url().$fileName);
    }

    public function createXLS_s($from,$to) {
        // create file name
        $fileName = 'tickets-'.time().'.xlsx';
        // load excel library
        $this->load->library('excel');
        $empInfo =  $this->db->query("SELECT * FROM support_entries WHERE ticket_id='system' AND (created_at BETWEEN '{$from}' AND '{$to}')")->result();
        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        // set Header
        $objPHPExcel->getActiveSheet()->SetCellValue('A1', 'Title');
        $objPHPExcel->getActiveSheet()->SetCellValue('B1', 'Ticket type');
        $objPHPExcel->getActiveSheet()->SetCellValue('C1', 'Created By');
        $objPHPExcel->getActiveSheet()->SetCellValue('D1', 'Assigned To');
        $objPHPExcel->getActiveSheet()->SetCellValue('E1', 'Opened Date');
        $objPHPExcel->getActiveSheet()->SetCellValue('F1', 'Closed Date');
        $objPHPExcel->getActiveSheet()->SetCellValue('G1', 'Duration');
        $objPHPExcel->getActiveSheet()->SetCellValue('H1', 'Comments');
        // set Row
        $rowCount = 2;

        foreach ($empInfo as $element) {
            $created = new DateTime($element->created_at);
            $created_t=$created->format('d/m/y');
            $closed_date = new DateTime($element->created_at);
            $closed_date_t=$closed_date->format('d/m/y');
            $duration = '';
            $start_date=strtotime($element->created_at);
            $end_date=strtotime($element->closed_date);
            if($end_date) {
                $d_t =(($end_date/(60*60)) - ($start_date/(60*60)));
                $duration= ceil($d_t) .'hrs';
            }
            $comments = [];
            $commentss = $this->db->query("SELECT * FROM support_comments where ticket_id={$element->id}")->result();
            if ($commentss){
                foreach ($commentss as $comm){
                    $comments[]=$comm->description;
                }
            }
            $objPHPExcel->getActiveSheet()->SetCellValue('A' . $rowCount, $element->title);
            $objPHPExcel->getActiveSheet()->SetCellValue('B' . $rowCount, $element->ticket_id);
            $objPHPExcel->getActiveSheet()->SetCellValue('C' . $rowCount, $element->created_by);
            $objPHPExcel->getActiveSheet()->SetCellValue('D' . $rowCount, $element->assign_to ? $this->db->query("select * from users where id={$element->assign_to}")->row()->first_name.' '.$this->db->query("select * from users where id={$element->assign_to}")->row()->last_name : '');
            $objPHPExcel->getActiveSheet()->SetCellValue('E' . $rowCount, $created_t);
            $objPHPExcel->getActiveSheet()->SetCellValue('F' . $rowCount, $closed_date_t);
            $objPHPExcel->getActiveSheet()->SetCellValue('G' . $rowCount, $duration);
            $objPHPExcel->getActiveSheet()->SetCellValue('H' . $rowCount, implode(',',$comments));
            $rowCount++;
        }
//        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
//        $objWriter->save(ROOT_UPLOAD_IMPORT_PATH.$fileName);
//        // download file
//        header("Content-Type: application/vnd.ms-excel");
//        redirect(HTTP_UPLOAD_IMPORT_PATH.$fileName);

        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $objWriter->save($fileName);
        // download file
        header("Content-Type: application/vnd.ms-excel");
        redirect(site_url().$fileName);
    }

  public function support_tickets() {
    $this->template->rander("checklists/reports/support_tickets/index");
  }

  public function checklists() {
    //$this->template->rander("checklists/reports/checklists/index");
      $this->template->rander("checklists/reports/checklists/index");
  }
    public function yaerly_checklists() {
        $this->template->rander("checklists/reports/checklists/yearly_checklists");
    }

  public function asset_disposal() {
    $this->template->rander("checklists/disposal/index");
  }
  public function third_parties() {
    $this->template->rander("checklists/thirdparty/index");
  }

  public function support_entries_list_data() {

    $list_data = $this->input->post("ticket_type_id") ? $this->Support_entries_model->get_all_where(array("ticket_type_id" => $this->input->post("ticket_type_id"), "deleted" => 0))->result() : $this->Support_entries_model->get_all_where(array("deleted" => 0))->result();
    

    $result = array();
    foreach ($list_data as $data) {
      $result[] = $this->support_entries_make_row($data);
    }
    echo json_encode(array("data" => $result));
  }
  public function third_party_list_data() {

    $list_data = $this->db->query("SELECT third_party_messages.*,tbl_third_party.username,tbl_third_party.email,
        tbl_third_party.phone ,support_entries.title as subject,ticket_types.title as ticket,support_entries.status FROM third_party_messages
        LEFT JOIN support_entries ON support_entries.id = third_party_messages.ticket_id
        LEFT JOIN ticket_types ON ticket_types.id = support_entries.ticket_type_id
        LEFT JOIN tbl_third_party ON tbl_third_party.id=third_party_messages.third_p_id")->result();

    $result = [];
    foreach ($list_data as $data) {
      $result[] = $this->third_parties_make_row($data);
    }
    echo json_encode(array("data" => $result));
  }
  public  function print_ticket(){
       $view_data['entries'] = $list_data = $this->db->query("SELECT third_party_messages.*,tbl_third_party.username,tbl_third_party.email,
        tbl_third_party.phone ,support_entries.title as subject,ticket_types.title as ticket,support_entries.status FROM third_party_messages
        LEFT JOIN support_entries ON support_entries.id = third_party_messages.ticket_id
        LEFT JOIN ticket_types ON ticket_types.id = support_entries.ticket_type_id
        LEFT JOIN tbl_third_party ON tbl_third_party.id=third_party_messages.third_p_id")->result();

      $this->load->library('pdf2');
      $this->pdf2->load_view('checklists/reports/support_entries/print_third_level', $view_data);
      $this->pdf2->render();
      $this->pdf2->stream('thirdlevelsupport.pdf');
  }

    public function extract_ticket()
    {
        $this->load->library("excel");
        $object = new PHPExcel();

        $object->setActiveSheetIndex(0);

        $table_columns = array("Subject", "Message", "Ticket Type", "Assigned To","Email","Phone","Date","Status");

        $column = 0;

        foreach($table_columns as $field)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
            $column++;
        }

        $employee_data = $list_data = $this->db->query("SELECT third_party_messages.*,tbl_third_party.username,tbl_third_party.email,
        tbl_third_party.phone ,support_entries.title as subject,ticket_types.title as ticket,support_entries.status FROM third_party_messages
        LEFT JOIN support_entries ON support_entries.id = third_party_messages.ticket_id
        LEFT JOIN ticket_types ON ticket_types.id = support_entries.ticket_type_id
        LEFT JOIN tbl_third_party ON tbl_third_party.id=third_party_messages.third_p_id")->result();

        $excel_row = 2;

        foreach($employee_data as $row)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->subject);
            $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->message);
            $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->ticket);
            $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->username);
            $object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row->email);
            $object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $row->phone);
            $object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, $row->created_at);
            $object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, $row->status);
            $excel_row++;
        }
// return array($data->id, $subject, $data->message,$data->ticket, $data->username,$data->email,$data->phone, $data->created_at,$ticket_status);
        $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="Supports Data.xls"');
        $object_writer->save('php://output');
  }

  private function third_parties_make_row($data) {
    $subject = anchor(get_uri("tickets/view_support/" . $data->id),$data->subject);

    $ticket_status_class = "label-danger";
    if ($data->status === "new") {
      $ticket_status_class = "label-warning";
    } else if ($data->status === "closed") {
      $ticket_status_class = "label-success";
    } else if ($data->status === "client_replied" && $this->login_user->user_type === "client") {
            $data->status = "open"; //don't show client_replied status to client
          }

          $ticket_status = "<span class='label $ticket_status_class large'>" . lang($data->status) . "</span> ";
         
          return array($data->id, $subject, $data->message,$data->ticket, $data->username,$data->email,$data->phone, $data->created_at,$ticket_status);
        }

 private function support_entries_make_row($data) {

    $subject = anchor(get_uri("tickets/view_support/" . $data->id), $data->title);

        // $project = $data->project_id ? anchor(get_uri("projects/view/" . $data->id), $this->Projects_model->get_one($data->project_id)->title) : "No Project";
    $ticket_type = $this->Ticket_types_model->get_one($data->ticket_type_id)->title;
    $assigned_to = $data->assign_to;

    $ticket_status_class = "label-danger";
    if ($data->status === "new") {
      $ticket_status_class = "label-warning";
    } else if ($data->status === "closed") {
      $ticket_status_class = "label-success";
    } else if ($data->status === "client_replied" && $this->login_user->user_type === "client") {
            $data->status = "open"; //don't show client_replied status to client
          }

          $ticket_status = "<span class='label $ticket_status_class large'>" . lang($data->status) . "</span> ";
         
          return array($data->id, $subject, $ticket_type, $assigned_to, $data->created_at,$ticket_status);
        }
        
        public function support_tickets_list_data() {

          if ($this->login_user->is_admin) {
            $id = $this->input->post("ticket_type_id");

            if($id==1){

                $list_data = $this->Support_entries_model->get_all_where(array("ticket_id" =>'system', "deleted" => 0))->result();
            }
            else{
                $list_data = $this->Support_entries_model->get_all_where(array("ticket_type_id" =>$id, "deleted" => 0))->result();
            }


           // $list_data = $this->Support_entries_model->get_all_where(array("ticket_type_id" => $id, "deleted" => 0))->result();
          } else {

            $list_data = $this->Support_entries_model->get_all_where(array("created_by" => $this->login_user->id, "deleted" => 0))->result();
          }
         //$list_data = $this->Support_entries_model->get_all_where(array("deleted" => 0))->result();

          $result = array();
          foreach ($list_data as $data) {

            $result[] = $this->support_tickets_make_row($data);
          }
          echo json_encode(array("data" => $result));

        }

        private function support_tickets_make_row($data) {

          $subject = anchor(get_uri("tickets/view_support/" . $data->id), $data->title);

        //show labels fild to team members only
          $ticket_labels = "";
          if ($data->labels && $this->login_user->user_type == "staff") {
            $labels = explode(",", $data->labels);
            foreach ($labels as $label) {
              $ticket_labels.="<span class='label label-info'  title='$label'>" . $label . "</span> ";
            }
          }
          if ($ticket_labels) {
            $subject.="<span class='pull-right'>" . $ticket_labels . "</span>";
          }

          $ticket_type = $data->ticket_type_id ? $this->Ticket_types_model->get_one($data->ticket_type_id)->title : $data->ticket_id;

        // $assigned_to = anchor(get_uri("team_members/view/" . $data->id), $this->Users_model->get_one($data->assigned_to)->first_name . " " . $this->Users_model->get_one($data->assigned_to)->last_name);

        // $escalation_matrix = $data->escalation_matrix != 0 ? modal_anchor(get_uri("ict_reports/excalation_matrix_view"), $data->escalation_matrix, array("class" => "edit", "title" => "Escalation Matrix", "data-post-view" => "details", "data-post-id" => $data->escalation_matrix)) : "None";

          $created_by =  $this->Users_model->get_one($data->created_by)->first_name ? $this->Users_model->get_one($data->created_by)->first_name . " " . $this->Users_model->get_one($data->created_by)->last_name :$data->created_by;
        $assigned_to = $this->Users_model->get_one($data->assign_to)->first_name . " " . $this->Users_model->get_one($data->assign_to)->last_name;

          $ticket_status_class = "label-danger";
          if ($data->status === "new") {
            $ticket_status_class = "label-warning";
          } else if ($data->status === "closed") {
            $ticket_status_class = "label-success";
          } else if ($data->status === "client_replied" && $this->login_user->user_type === "client") {
            $data->status = "open"; //don't show client_replied status to client
          }

          $ticket_status = "<span class='label $ticket_status_class large'>" . lang($data->status) . "</span> ";

          $options = "";
          if ($this->login_user->user_type == "staff" && $data->status !== "closed") {
            $options .= modal_anchor(get_uri("ict_reports/support_tickets_modal_form"), "<i class='fa fa-pencil'></i>", array("class" => "edit", "title" => lang('ticket'), "data-post-view" => "details", "data-post-id" => $data->id));
            $options .= js_anchor("<i class='fa fa-times fa-fw'></i>", array('title' => lang('delete_task'), "class" => "delete", "data-id" => $data->id, "data-action-url" => get_uri("tickets/delete_ticket"), "data-action" => "delete"));
          }
          

          return array($data->id, $subject, $ticket_type, $created_by,$assigned_to, format_to_relative_time($data->last_activity_at), $ticket_status, $options);
        }

        //load new tickt modal
        public function support_tickets_modal_form()
        {

          validate_submitted_data(array(
            "id" => "numeric"
          ));
         $ticket_info = $this->Support_entries_model->get_one($this->input->post('id'));
          $view_data['ticket_types_dropdown'] = $this->Ticket_types_model->get_dropdown_list(array("title"), "id");
          $view_data['model_info'] = $ticket_info;
          $view_data['location_info'] = $this->Locations_model->get_one($ticket_info->location_id);
          $view_data['user_info'] =$this->Users_model->get_one($ticket_info->user_ref_id);

        //prepare assign to list
          $assigned_to_dropdown = array("" => "-") + $this->Users_model
          ->get_dropdown_list(
            ["first_name", "last_name"],
            "id",
            ['status' => 'active', "deleted" => 0, "user_type" => "staff"]
          );

          asort($assigned_to_dropdown, SORT_STRING);

          $view_data['assigned_to_dropdown'] = $assigned_to_dropdown;

          $escalation_matrix_dropdown = array("" => "-") + $this->Escalation_matrix_model
          ->get_dropdown_list(
            ["escalation_matrix"],
            "id",
            ["deleted" => 0]
          );

          asort($escalation_matrix_dropdown, SORT_STRING);

          $view_data['escalation_matrix_dropdown'] = $escalation_matrix_dropdown;

        //prepare label suggestions
          $labels = explode(",", $this->Tickets_model->get_label_suggestions());
          $label_suggestions = array();
          foreach ($labels as $label) {
            if ($label && !in_array($label, $label_suggestions)) {
              $label_suggestions[] = $label;
            }
          }
          if (!count($label_suggestions)) {
            $label_suggestions = array("0" => "");
          }
          $view_data['label_suggestions'] = $label_suggestions;
          $view_data['staffs_dropdown'] = $this->HR_DB()->query("SELECT Emp_Name FROM tblEmployee")->result();
          $view_data['users'] = $this->db->query("SELECT * FROM users")->result();
            $view_data['locations'] = $this->db->query("SELECT * FROM locations")->result();
          $view_data['ict_team'] = 3;

          $this->load->view('checklists/reports/support_tickets/modal_form', $view_data);
        }

        public function checklists_list_data() {

      // $id = $this->input->post("ticket_type_id");

          $list_data = $this->TblChecklistsTasks->get_all_where(array("deleted" => 0))->result();

          $result = array();
          foreach ($list_data as $data) {
            $result[] = $this->checklists_make_row($data);
          // $result[] = ($data);
          }
          echo json_encode(array("data" => $result));
        }

        private function checklists_make_row($data) {

          $ref_no = modal_anchor(get_uri("ict_reports/modal_checklist_details"), $data->ref_no, array("class" => "edit", "title" => "Checklist Details", "data-post-id" => $data->ref_no));

          $performed_by = anchor(get_uri("team_members/view/" . $data->performed_by), $this->Users_model->get_one($data->performed_by)->first_name . " " . $this->Users_model->get_one($data->performed_by)->last_name);

          $title = $this->db->get_where('tbl_checklist_task_checks', array('ref_no' => $data->ref_no))->first_row()->check_item;

          return array($data->id, $ref_no, $performed_by, date("dS M Y",strtotime($data->performed_on)), $this->TblChecklistStatus->get_one($data->status)->name);
        }

        public function modal_checklist_details() {

          $view_data['id'] = $this->input->post('id');
          $view_data['list_data'] = $this->db->query("SELECT tbl_checklist_task_checks.id, tbl_checklist_task_checks.ref_no, tbl_checklists.`name`, tbl_checklist_performed_on.`name` AS `type`, tbl_checklist_task_checks.`comment`, tbl_checklist_status.`name` AS `status` FROM tbl_checklist_task_checks LEFT JOIN tbl_checklists ON tbl_checklist_task_checks.check_item = tbl_checklists.id LEFT JOIN tbl_checklist_performed_on ON tbl_checklists.performed_on = tbl_checklist_performed_on.id LEFT JOIN tbl_checklist_status ON tbl_checklist_task_checks.`status` = tbl_checklist_status.id")->result();

          $this->load->view('checklists/reports/checklists/view_modal', $view_data);
        }

        public function inventory() {
         $list_data = $this->SAGE_DB()->get_where("_btblFAAsset", array("iAssetTypeNo" => get_setting("iAssetTypeNo")))->result();
         
         foreach ($list_data as $data) {
        // $this->Ict_issets_model->save(array("sage_id" => $data->idAssetNo));
           $this->db->get_where('ict_issets', array("sage_id" => $data->idAssetNo), 1)->num_rows() ? '' :
           $this->db->insert('ict_issets', array("sage_id" => $data->idAssetNo, "depreciation_date" =>
            (new DateTime($data->dDepreciationStartDate))->add(new DateInterval('P3Y'))->format('Y-m-d'), "category_id" => 0));
         }
         $this->template->rander("checklists/ict_inventory/index");
       }

       public function inventory_list_data() {

      // $app_assets = $this->input->post("category_id") ? $this->Ict_issets_model->get_all_where(array("assigned_to" => $this->login_user->id, "category_id" => $category_id, "deleted" => 0))->result() : $this->Ict_issets_model->get_all_where(array("deleted" => 0))->result();
            
      
          $app_assets= $this->Ict_issets_model->get_all_where(array("deleted" => 0))->result();
        

        $list_data =[];
        foreach ($app_assets as $asset) {
            $sage_id = $asset->sage_id;
           $list_data[] =$this->SAGE_DB()->query("SELECT * FROM _btblFAAsset WHERE idAssetNo=$sage_id")->result();
         }
      
        $result = array();
        foreach ($list_data as $data) {

          foreach ($data as $value) {

            $result[] = $this->inventory_make_row($value);
          }
        }

        echo json_encode(array("data" => $result));
      }

      private function inventory_make_row($data) {
          
        $id = $data->idAssetNo;
        $description = $data->cAssetDesc . " <span class='label label-info'  title='Label'>Item History</span> ";
        $model_no = $this->Ict_issets_model->get_one_ict_asset($data->idAssetNo)->model_no ? $this->Ict_issets_model->get_one_ict_asset($data->idAssetNo)->model_no : "NOT SET";
        $serial = $this->Ict_issets_model->get_one_ict_asset($data->idAssetNo)->serial_no ? $this->Ict_issets_model->get_one_ict_asset($data->idAssetNo)->serial_no : "NOT SET";
        $location = $data->iLocationNo != 0 ? $this->SAGE_DB()->get_where("_btblFALocation", array("idLocationNo" => $data->iLocationNo))->result()[0]->cLocationDesc : "NOT SET";
        $category = $data->iAssetTypeNo != 0 ? $this->SAGE_DB()->get_where("_btblFAAssetType", array("idAssetTypeNo" => $data->iAssetTypeNo))->result()[0]->cAssetTypeDesc : "NOT SET";
        $custodian = $this->Ict_issets_model->get_one_ict_asset($data->idAssetNo)->assigned_to;
        $depertment = $this->Ict_issets_model->get_one_ict_asset($data->idAssetNo)->sage_dept != 0 ? $this->SAGE_DB()->get_where("departments", array("id" => $this->Ict_issets_model->get_one_ict_asset($data->idAssetNo)->sage_dept))->result()[0]->name : "NOT SET";
        $pDate = date("dS M Y",strtotime($data->dPurchaseDate));
        $pCost = number_format($data->fPurchaseValue, 2);
        $Supplier = $data->iSupplierNo != 0 ? $this->SAGE_DB()->get_where("Vendor", array("DCLink" => $data->iSupplierNo))->result()[0]->Name : "NOT SET";

        if ($this->login_user->is_admin || $this->Team_model->is_ict_member()) {
          $description = modal_anchor(get_uri("ict_reports/description_modal_form"), $description, array("class" => "edit", "title" => "View Item Description", "data-post-id" => $id, "data-post-desc" => $data->cAssetDesc));
          $custodian = modal_anchor(get_uri("ict_reports/custodian_modal_form"), $custodian != 0 ? $this->Users_model->get_one($custodian)->first_name : "NOT SET", array("class" => "edit", "title" => "Update Asset Custodian", "data-post-id" => $id));
          $depertment = modal_anchor(get_uri("ict_reports/depertment_modal_form"), $depertment, array("class" => "edit", "title" => "Update Asset Depertment", "data-post-id" => $id));
          $model_no = modal_anchor(get_uri("ict_reports/model_no_modal_form"), $model_no, array("class" => "edit", "title" => "Update Model NO", "data-post-id" => $id));
          $serial = modal_anchor(get_uri("ict_reports/serial_no_modal_form"), $serial, array("class" => "edit", "title" => "Update Serial NO", "data-post-id" => $id));
        } else {
          $custodian = $custodian != 0 ? $this->Users_model->get_one($custodian)->first_name : "NOT SET";
        }

        if ($this->login_user->id == $this->Ict_issets_model->get_one_ict_asset($data->idAssetNo)->assigned_to) {

          if ($this->Ict_issets_model->get_one_ict_asset($data->idAssetNo)->accepted == "No") {
            $custodian = js_anchor("<button class=\"btn btn-success btn-xs\">ACCEPT</button>", array('title' => "Accept Asset", "class" => "edit", "data-id" => $id, "data-action-url" => get_uri("ict_reports/accept_asset"), "data-action" => "delete")) . " <hr> " . js_anchor("<button class=\"btn btn-warning btn-xs\">DECLINE</button>", array('title' => "Decline Asset", "class" => "edit", "data-id" => $id, "data-action-url" => get_uri("ict_reports/decline_asset"), "data-action" => "delete"));
          }
        }

        return array($id, $description, $model_no, $serial, $location, $category, $custodian, $depertment, $pDate, $pCost, $Supplier);
      }

      public function accept_asset() {

        $id = $this->Ict_issets_model->get_one_ict_asset($this->input->post('id'))->id;

        $data = array(
          "assigned_to" => $this->login_user->id,
          "accepted" => "Yes"
        );

        $log_data = array(
          "asset_id" => $id,
          "action" => NULL,
          "assigned_by" => NULL,
          "status" => "accepted",
          "assigned_to" => $this->login_user->id
        );

        $mail_data = array(
          "to" => $this->Users_model->get_one($this->Ict_issets_model->get_one_ict_asset($this->input->post('id'))->assigned_by)->first_name,
          "from" => $this->Users_model->get_one($this->login_user->id)->first_name,
          "asset" => $this->SAGE_DB()->get_where("_btblFAAsset", array("idAssetNo" => $this->input->post('id'),"iAssetTypeNo" => get_setting("iAssetTypeNo")))->result()[0]->cAssetDesc . " : " . $this->SAGE_DB()->get_where("_btblFAAsset", array("idAssetNo" => $this->input->post('id'),"iAssetTypeNo" => get_setting("iAssetTypeNo")))->result()[0]->cAssetCode,
          "asset_url" => get_uri("ict_reports/inventory"),
          "send_to" => $this->Users_model->get_one($this->Ict_issets_model->get_one_ict_asset($this->input->post('id'))->assigned_by)->email
        );

        $save_id = $this->Ict_issets_model->save($data, $id);

        if ($save_id) {
          $this->_acceptMail($mail_data);
          $this->Ict_asset_history_model->save($log_data);
          echo json_encode(array("success" => true, 'message' => lang('record_saved')));
        } else {
          echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
      }

      public function decline_asset() {

        $id = $this->Ict_issets_model->get_one_ict_asset($this->input->post('id'))->id;

        $data = array(
          "assigned_to" => 0,
          "accepted" => "NO"
        );

        $log_data = array(
          "asset_id" => $id,
          "action" => "NULL",
          "assigned_by" => NULL,
          "status" => "declined",
          "assigned_to" => $this->login_user->id
        );

        $mail_data = array(
          "to" => $this->Users_model->get_one($this->Ict_issets_model->get_one_ict_asset($this->input->post('id'))->assigned_by)->first_name,
          "from" => $this->Users_model->get_one($this->login_user->id)->first_name,
          "asset" => $this->SAGE_DB()->get_where("_btblFAAsset", array("idAssetNo" => $this->input->post('id'),"iAssetTypeNo" => get_setting("iAssetTypeNo")))->result()[0]->cAssetDesc . " : " . $this->SAGE_DB()->get_where("_btblFAAsset", array("idAssetNo" => $this->input->post('id'),"iAssetTypeNo" => get_setting("iAssetTypeNo")))->result()[0]->cAssetCode,
          "asset_url" => get_uri("ict_reports/inventory"),
          "send_to" => $this->Users_model->get_one($this->Ict_issets_model->get_one_ict_asset($this->input->post('id'))->assigned_by)->email
        );

        $save_id = $this->Ict_issets_model->save($data, $id);

        if ($save_id) {
          $this->_declineMail($mail_data);
          $this->Ict_asset_history_model->save($log_data);
          echo json_encode(array("success" => true, 'message' => lang('record_saved')));
        } else {
          echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
      }

      public function return_asset() {

        $id = $this->Ict_issets_model->get_one_ict_asset($this->input->post('id'))->id;

        $data = array(
          "assigned_to" => 0,
          "assigned_by" => NULL,
          "accepted" => "NO"
        );

        $log_data = array(
          "asset_id" => $id,
          "action" => "returned",
          "assigned_by" => NULL,
          "status" => "returned",
          "assigned_to" => NULL
        );

        $mail_data = array(
          "to" => $this->Users_model->get_one($this->Ict_issets_model->get_one_ict_asset($this->input->post('id'))->assigned_by)->first_name,
          "from" => $this->Users_model->get_one($this->login_user->id)->first_name,
          "asset" => $this->SAGE_DB()->get_where("_btblFAAsset", array("idAssetNo" => $this->input->post('id'),"iAssetTypeNo" => get_setting("iAssetTypeNo")))->result()[0]->cAssetDesc . " : " . $this->SAGE_DB()->get_where("_btblFAAsset", array("idAssetNo" => $this->input->post('id'),"iAssetTypeNo" => get_setting("iAssetTypeNo")))->result()[0]->cAssetCode,
          "asset_url" => get_uri("ict_reports/inventory"),
          "send_to" => $this->Users_model->get_one($this->Ict_issets_model->get_one_ict_asset($this->input->post('id'))->assigned_by)->email
        );

        $save_id = $this->Ict_issets_model->save($data, $id);

        if ($save_id) {
          $this->_returnMail($mail_data);
          $this->Ict_asset_history_model->save($log_data);
          echo json_encode(array("success" => true, 'message' => lang('record_saved')));
        } else {
          echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
      }

      public function description_modal_form() {

        $view_data['model_info'] = $this->Ict_issets_model->get_one_ict_asset($this->input->post('id'));
        $sage_id = $this->input->post('sage_id') ? $this->input->post('sage_id') : $view_data['model_info']->sage_id;
        $asset_id = $view_data['model_info']->id;
        $view_data['sage_id'] = $sage_id;
        $view_data['title'] = $this->input->post('desc');

        $view_data['model_info_history'] = $this->Ict_asset_history_model->get_one_ict_asset_history($asset_id)->result();

        $this->load->view('checklists/ict_inventory/description_modal_form', $view_data);
      }

      function edit_description_modal_form() {

        $view_data['model_info'] = $this->Ict_issets_model->get_one_ict_asset($this->input->post('id'));
        $sage_id = $this->input->post('sage_id') ? $this->input->post('sage_id') : $view_data['model_info']->sage_id;
        $view_data['sage_id'] = $sage_id;
        $this->load->view('checklists/ict_inventory/edit_description_modal_form', $view_data);
      }

      function save_description() {

        $id = $this->input->post('id');

        $data = array(
          "description" => $this->input->post('description')
        );

        $save_id = $this->Ict_issets_model->save($data, $id);
        if ($save_id) {
          echo json_encode(array("success" => true, 'message' => lang('record_saved')));
        } else {
          echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
      }

      public function custodian_modal_form() {

        $view_data['model_info'] = $this->Ict_issets_model->get_one_ict_asset($this->input->post('id'));
        $sage_id = $this->input->post('sage_id') ? $this->input->post('sage_id') : $view_data['model_info']->sage_id;
        $view_data['sage_id'] = $sage_id;
        $view_data['users_dropdown'] = $this->Users_model->get_dropdown_list(array("first_name", "last_name"), "id", array("user_type" => "staff"));
        $this->load->view('checklists/ict_inventory/custodian_modal_form', $view_data);
      }

      function save_custodian() {

        $id = $this->input->post('id');

        $data = array(
          "assigned_to" => $this->input->post('user_id'),
          "assigned_by" => $this->login_user->id
        );

        $log_data = array(
          "asset_id" => $id,
          "action" => "issued",
          "assigned_by" => $this->login_user->id,
          "status" => NULL,
          "assigned_to" => $this->input->post('user_id')
        );

        $mail_data = array(
          "to" => $this->Users_model->get_one($this->input->post('user_id'))->first_name,
          "from" => $this->Users_model->get_one($this->login_user->id)->first_name,
          "asset" => $this->SAGE_DB()->get_where("_btblFAAsset", array("idAssetNo" => $this->input->post('sage_id'),"iAssetTypeNo" => get_setting("iAssetTypeNo")))->result()[0]->cAssetDesc . " : " . $this->SAGE_DB()->get_where("_btblFAAsset", array("idAssetNo" => $this->input->post('sage_id'),"iAssetTypeNo" => get_setting("iAssetTypeNo")))->result()[0]->cAssetCode,
          "asset_url" => get_uri("ict_reports/inventory"),
          "send_to" => $this->Users_model->get_one($this->input->post('user_id'))->email
        );

        $save_id = $this->Ict_issets_model->save($data, $id);
        if ($save_id) {
          $this->Ict_asset_history_model->save($log_data);
          $this->_issueMail($mail_data);
          echo json_encode(array("success" => true, 'message' => lang('record_saved')));
        } else {
          echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
      }

      public function depertment_modal_form() {

        $view_data['model_info'] = $this->Ict_issets_model->get_one_ict_asset($this->input->post('id'));
        $sage_id = $this->input->post('sage_id') ? $this->input->post('sage_id') : $view_data['model_info']->sage_id;
        $view_data['sage_id'] = $sage_id;
        $view_data['depertments_dropdown'] = $this->SAGE_DB()->get('departments')->result();
        $this->load->view('checklists/ict_inventory/depertment_modal_form', $view_data);
      }

      function save_depertment() {

        $id = $this->input->post('id');

        $data = array(
          "sage_dept" => $this->input->post('sage_dept')
        );

        $save_id = $this->Ict_issets_model->save($data, $id);
        if ($save_id) {
          echo json_encode(array("success" => true, 'message' => lang('record_saved')));
        } else {
          echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
      }

      public function model_no_modal_form() {
        $view_data['model_info'] = $this->Ict_issets_model->get_one_ict_asset($this->input->post('id'));
        $sage_id = $this->input->post('sage_id') ? $this->input->post('sage_id') : $view_data['model_info']->sage_id;
        $view_data['sage_id'] = $sage_id;
        $this->load->view('checklists/ict_inventory/model_no_modal_form', $view_data);
      }

      function save_model_no() {

        $id = $this->input->post('id');

        $data = array(
          "model_no" => $this->input->post('model_no')
        );

        $save_id = $this->Ict_issets_model->save($data, $id);
        if ($save_id) {
          echo json_encode(array("success" => true, 'message' => lang('record_saved')));
        } else {
          echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
      }

      public function serial_no_modal_form() {
        $view_data['model_info'] = $this->Ict_issets_model->get_one_ict_asset($this->input->post('id'));
        $sage_id = $this->input->post('sage_id') ? $this->input->post('sage_id') : $view_data['model_info']->sage_id;
        $view_data['sage_id'] = $sage_id;
        $this->load->view('checklists/ict_inventory/serial_no_modal_form', $view_data);
      }

      function save_serial_no() {

        $id = $this->input->post('id');

        $data = array(
          "serial_no" => $this->input->post('serial_no')
        );

        $save_id = $this->Ict_issets_model->save($data, $id);
        if ($save_id) {
          echo json_encode(array("success" => true, 'message' => lang('record_saved')));
        } else {
          echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
      }

      public function actual_asset_modal_form() {
        $view_data['users_dropdown'] = $this->Users_model->get_dropdown_list(array("first_name", "last_name"), "id", array("user_type" => "staff"));
        $view_data['locations_dropdown'] = $this->SAGE_DB()->get('_btblFALocation')->result();
        $view_data['suppliers_dropdown'] = $this->SAGE_DB()->get('Vendor')->result();
        $this->load->view('checklists/ict_inventory/actual_asset_modal_form', $view_data);
      }

      function save_actual_asset() {

        $sage_data = array(
        // "assigned_to" => $this->input->post('user_id'),
          "cAssetCode" => $this->input->post('cassetcode'),
          "cAssetDesc" => $this->input->post('title'),
          "iAssetTypeNo" => get_setting("iAssetTypeNo"),
          "iLocationNo" => get_setting("iLocationNo"),
          "iSupplierNo" => $this->input->post('supplier'),
          "fNoOfUnits" => 1,
          "dPurchaseDate" => $this->input->post('dPurchaseDate'),
          "dDepreciationStartDate" => $this->input->post('dPurchaseDate'),
          "dWTStartDate" => $this->input->post('dPurchaseDate'),
          "fPurchaseValue" => $this->input->post('fPurchaseValue'),
          "fRevalueValue" => $this->input->post('fPurchaseValue'),
          "fInsuredValue" => 0,
          "fResidualValue" => 0,
          "fScrapValue" => 0,
          "dOriginalWTStartDate" => $this->input->post('dPurchaseDate'),
          "dOriginalDeprStartDate" => $this->input->post('dPurchaseDate')
        );

        $this->SAGE_DB()->insert("_btblFAAsset", $sage_data);
        

        $actual_data = array(
          "sage_id" => $this->SAGE_DB()->get_where("_btblFAAsset", array("cAssetCode" => $this->input->post('cassetcode'), "cAssetDesc" => $this->input->post('title')))->result()[0]->idAssetNo,
          "sage_dept" => $this->input->post('sage_dept'),
          "model_no" => $this->input->post('model_no'),
          "serial_no" => $this->input->post('serial'),
          "assigned_to" => $this->input->post('user_id'),
          "description" => $this->input->post('description'),
          "category_id" => 1
        );

        $save_id = $this->Ict_issets_model->save($actual_data);

        if ($save_id) {
          echo json_encode(array("success" => true, 'message' => lang('record_saved')));
        } else {
          echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
      }

      public function disposal_list_data() {
       $app_assets = [];
       if ($this->login_user->is_admin) {
        $app_assets[]= $this->Ict_issets_model->get_all_where(array("deleted" => 0))->result();
      } else {
        $app_assets[] = $this->Ict_issets_model->get_all_where(array("assigned_to" => $this->login_user->id, "deleted" => 0))->result();
      }

     
      $list_data = [];
      foreach ($app_assets as $asset) {
        foreach($asset as $key => $item){
     $list_data[] = $this->SAGE_DB()->get_where("_btblFAAsset", array("idAssetNo" => $item->sage_id,"iAssetTypeNo" => get_setting("iAssetTypeNo")))->result();
        }
        
        }
      
      $result = array();
      foreach ($list_data as $data) {
        foreach ($data as $value) {
          $result[] = $this->disposal_make_row($value);
        }
      }

      echo json_encode(array("data" => $result));

    }

    private function disposal_make_row($data) {

      $id = $data->idAssetNo;
      $description = $data->cAssetDesc;
      $serial = $data->cAssetCode;
      $category = $data->iAssetTypeNo != 0 ? $this->SAGE_DB()->get_where("_btblFAAssetType", array("idAssetTypeNo" => $data->iAssetTypeNo))->row_array()['cAssetTypeDesc'] : "NOT SET";

      $custodian = $this->Ict_issets_model->get_one_ict_asset($data->idAssetNo)->assigned_to != 0 ? $this->Users_model->get_one($this->Ict_issets_model->get_one_ict_asset($data->idAssetNo)->assigned_to)->first_name : "NOT SET";
      $dDate = ($this->Ict_issets_model->get_one_ict_asset($data->idAssetNo)->depreciation_date);

      $optoins = $dDate ? js_anchor("<i class='fa fa-times fa-fw'></i>", array('title' => "Dispose Asset", "class" => "delete", "data-id" => $id, "data-action-url" => get_uri("ict_reports/delete_asset"), "data-action" => "delete")) : '';

      return array($id, $description, $serial, $category, $custodian, date("dS M Y",strtotime($data->dPurchaseDate)), $dDate, $optoins);
    }

    function asset_disposal_job($hours = 0) {

      $date = (new \DateTime())->modify('+' . $hours . ' hours')->format('Y-m-d');
      $app_assets = $this->Ict_issets_model->get_all_where(array("depreciation_date <=" => $date, "deleted" => 0))->result();
      $disposal_data = array();
      foreach ($app_assets as $asset) {
        $list_data = $this->SAGE_DB()->get_where("_btblFAAsset", array("idAssetNo" => $asset->sage_id,"iAssetTypeNo" => get_setting("iAssetTypeNo")))->result();
        foreach ($list_data as $data) {
          foreach (json_decode($this->Team_model->list_ict_members()) as $ict_member) {
            $disposal_data = array(
              "to" => $this->Users_model->get_one($ict_member)->first_name,
              "from" => "ICT TEAM",
              "asset" => $data->cAssetDesc . " : " . $data->cAssetCode,
              "asset_url" => get_uri("ict_reports/asset_disposal"),
              "disposal_date" => (new \DateTime($data->dDepreciationStartDate))->modify('+' . $hours . ' hours')->format('dS M Y'),
              "send_to" => $this->Users_model->get_one($ict_member)->email
            );
            $this->_desposeMail($disposal_data);
          }
        }
      }
    }

    function delete_asset() {

     $id = $this->Ict_issets_model->get_one_ict_asset($this->input->post('id'))->id;

     if ($this->input->post('undo')) {
      if ($this->Ict_issets_model->delete($id, true)) {
        echo json_encode(array("success" => true, "message" => lang('record_undone')));
      } else {
        echo json_encode(array("success" => false, "message" => lang('error_occurred')));
      }
    } else {
      if ($this->Ict_issets_model->delete($id)) {
        echo json_encode(array("success" => true, "message" => lang('record_deleted')));
      } else {
        echo json_encode(array("success" => false, "message" => lang('record_cannot_be_deleted')));
      }
    }
  }

  public function inventory_maintenance() {      
    $this->template->rander("checklists/maintenance/index");
  }

  public function inventory_list(){

      $view_data['assets_maintenance'] = $this->db->query("SELECT preventive_maintainance.*,CONCAT(users.first_name,' ',users.last_name) as username FROM preventive_maintainance
       LEFT JOIN users ON users.id=preventive_maintainance.assigned_id")->result();
      $this->template->rander("checklists/maintenance/index_list",$view_data);
  }
  public function inventory_maintenance_modal_form() {
   
    $view_data['ict_assets_dropdown'] = $this->db->query("SELECT * FROM inventory_assets")->result();
    $view_data['assign_dropdown'] =  $this->Users_model->get_all_where(array("user_type" => "staff", "deleted" => 0))->result();
    
    $view_data['excalation_dropdown'] = $this->Escalation_matrix_model->get_all_where(array("deleted" => 0))->result();
    $this->load->view("checklists/maintenance/modal_form", $view_data);
  }

  public function inventory_maintenance_save() {

    $id = $this->input->post('id');
  $ict_asset = $this->db->query("SELECT * FROM inventory_assets WHERE id={$this->input->post('ict_assets')}")->row();
 
    $data = array(
      "sage_item_id" => $this->input->post('ict_assets'),
      "maintainance_date" => $this->input->post('maintainance_date'),
      "assigned_id" => $this->input->post('assign'),
      "excalation_id" => $this->input->post('excalation'),
      "purchase_date" => $ict_asset->purchase_date,
      "created_at" => date('d-m-Y'),
      "updated_at" => date('d-m-Y')
    );

    $save_id = $this->Preventive_maintainance_model->save($data, $id);

    if ($save_id) {
      echo json_encode(array("success" => true, 'message' => lang('record_saved')));
    } else {
      echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
    }
  }

  public function preventive_maintainance_list_data() {
    if ($this->login_user->is_admin) {
      $list_data = $this->Preventive_maintainance_model->get_all_where(array("deleted" => 0))->result();
    } else {
      $list_data = $this->Preventive_maintainance_model->get_all_where(array("assigned_id" => $this->login_user->id, "deleted" => 0))->result();
    }

    $result = array();
    foreach ($list_data as $data) {
      $result[] = $this->preventive_maintainance_make_row($data);
    }
    echo json_encode(array("data" => $result));

  }

  private function preventive_maintainance_make_row($data) {

    if ($data->status == 0) {
      $status_class = "label-warning";
      $status_data = "Not Performed";
    } else if ($data->status == 1) {
      $status_class = "label-success";
      $status_data = "Performed";
    }

    $status = "<span class='label $status_class large'>" . $status_data . "</span> ";
    $options = "";

    if ($this->login_user->is_admin) {
        // $options .= modal_anchor(get_uri("ict_reports/inventory_maintenance_modal_form"), "<i class='fa fa-pencil'></i>", array("class" => "edit", "title" => lang('edit_task'), "data-post-id" => $data->id));
        $options .= js_anchor("<i class='fa fa-times fa-fw'></i>", array('title' => 'Delete Maintenance', "class" => "delete", "data-id" => $data->id, "data-action-url" => get_uri("ict_reports/inventory_maintenance_delete"), "data-action" => "delete"));
    }
     if($data->status == 0) {
        // modal_anchor(get_uri("ict_reports/perform_maintenance"), "<i class='fa fa-plus-circle'></i> " . "Perform Task", array("class" => "fa fa-pencil", "title" => "Perform Task"));

      $options .= modal_anchor(get_uri("ict_reports/perform_maintenance/".$data->id), "<i class='fa fa-pencil
        '></i> ", array("class" => "btn btn-default btn-xs", "title" => "Perform Task","data-id" => $data->id));
          // $options .= js_anchor("<i class='fa fa-times fa-fw'></i>", array('title' => 'Escalate Task', "class" => "delete", "data-id" => $data->id, "data-action-url" => get_uri("ict_reports/escalate_maintenance"), "data-action" => "delete"));
    }

    return array($data->id, $this->db->query("SELECT * FROM inventory_assets where id={$data->sage_item_id}")->row()->title, $this->Users_model->get_one($data->assigned_id)->first_name . " " . $this->Users_model->get_one($data->assigned_id)->last_name, $this->Escalation_matrix_model->get_one($data->excalation_id)->escalation_matrix, $status, date("dS M Y",strtotime($data->maintainance_date)), $options);
  }
   public function print_asset_form(){
       $view_data['assets_maintenance'] = $this->db->query("SELECT preventive_maintainance.*,CONCAT(users.first_name,' ',users.last_name) as username FROM preventive_maintainance
       LEFT JOIN users ON users.id=preventive_maintainance.assigned_id")->result();

       $this->load->library('pdf2');
       $this->pdf2->load_view('checklists/maintenance/print_form', $view_data);
       $this->pdf2->render();
       $this->pdf2->stream('assetsmaintenance.pdf');
   }

    public function extract_asset()
    {
        $this->load->library("excel");
        $object = new PHPExcel();

        $object->setActiveSheetIndex(0);

        $table_columns = array("Asset", "Assigned To", "Status", "Date");

        $column = 0;

        foreach($table_columns as $field)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
            $column++;
        }

        $employee_data =$this->db->query("SELECT preventive_maintainance.*,CONCAT(users.first_name,' ',users.last_name) as username FROM preventive_maintainance
       LEFT JOIN users ON users.id=preventive_maintainance.assigned_id")->result();

        $excel_row = 2;

        foreach($employee_data as $row)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->sage_item_id);
            $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->username);
            $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->status == 0 ? 'Not Performed' :'Performed');
            $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, date('d-m-Y',strtotime($row->created_at)));
            $excel_row++;
        }

        $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="Assets Maintenance Data.xls"');
        $object_writer->save('php://output');
}
 public function perform_maintenance($id) {
 

    // $save_id = $this->Preventive_maintainance_model->update_where(array("status" => 1, "performed_by" => $this->login_user->id), array("id" => $id));

    // if ($save_id) {
    //   echo json_encode(array("success" => true, 'message' => lang('record_saved')));
    // } else {
    //   echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
    // }
 
     $view_data['asset'] =$this->db->query("SELECT inventory_assets.*,preventive_maintainance.*,inventory_assets.purchase_date as p,inventory_assets.id as asset_id FROM preventive_maintainance
        LEFT JOIN inventory_assets ON preventive_maintainance.sage_item_id=inventory_assets.id
        WHERE preventive_maintainance.id=$id")->row();
     $view_data['id'] = $id;
     $view_data['users'] = $this->db->query("SELECT * FROM users")->result();

    $this->load->view('checklists/maintenance/perform_form',$view_data);
  }
  function maintenance_p(){
    $data = array('next_maintenance_date' =>$this->input->post('next_maintenance_date'),
                   'assigned_id' => $this->input->post('assign'),
                   'status' => 1,
                   'performed_by' => $this->login_user->id,
                   'updated_at' => date('d-m-Y')
               );
    $this->db->where('id',$this->input->post('id'))->update('preventive_maintainance',$data);
    if ($data) {
      echo json_encode(array("success" => true, 'message' => lang('record_saved')));
    } else {
      echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
    } 
  }

  public function escalate_maintenance() {
    $id = $this->input->post('id');
  }

  public function inventory_maintenance_delete() {

    $id = $this->input->post('id');

    $save_id = $this->Preventive_maintainance_model->update_where(array("deleted" => 1), array("id" => $id));

    if ($save_id) {
      echo json_encode(array("success" => true, 'message' => lang('record_saved')));
    } else {
      echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
    }

  }

  public function maintainance_reports() {      
    $this->template->rander("checklists/reports/ict_maintainance/index");
  }

  public function maintainance_reports_list_data() {

    $list_data = $this->Preventive_maintainance_model->get_all_where(array("status" => $this->input->post('status'), "deleted" => 0))->result();

    $result = array();
    foreach ($list_data as $data) {
      $result[] = $this->maintainance_reports_make_row($data);
          // $result[] = $data;
    }
    echo json_encode(array("data" => $result));
  }

  public function maintainance_reports_make_row($data) {

    if ($data->status == 0) {
      $status_class = "label-warning";
      $status_data = "Not Performed";
    } else if ($data->status == 1) {
      $status_class = "label-success";
      $status_data = "Performed";
    }

    $status = "<span class='label $status_class large'>" . $status_data . "</span> ";

    return array($data->id, $this->SAGE_DB()->get_where("_btblFAAsset", array("idAssetNo" => $data->sage_item_id))->row_array()['cAssetDesc'], $data->performed_by != 0 ? $this->Users_model->get_one($data->performed_by)->first_name . " " . $this->Users_model->get_one($data->performed_by)->last_name : $status,date("dS M Y",strtotime($data->maintainance_date)), $status);
  }


  public function support_tickets_save()
  {

      $id = $this->input->post('id');
      $ticket_type_id = $this->input->post('ticket_type_id') ? $this->input->post('ticket_type_id') : 1;

      $now = get_current_utc_time();
      $ticket_data = array(
          "title" => $this->input->post('title'),
          "ticket_type_id" => $ticket_type_id,
          "created_by" => $this->login_user->id,
          "created_at" => $now,
          "last_activity_at" => $now,
          "location_id" => $this->input->post('location_id'),
          "user_ref_id" => $this->input->post('ref_user_id'),
          // "team_id" => $this->input->post('team_id'),
          "labels" => $this->input->post('labels')
      );

      if ($id) {
          //client can't update ticket
          if ($this->login_user->user_type === "client") {
              redirect("forbidden");
          }

          //remove not updateable fields
          //unset($ticket_data['created_by']);
          //unset($ticket_data['created_at']);
          //unset($ticket_data['last_activity_at']);
      }

      $target_path = get_setting("support_file_path");
      $files_data = move_files_from_temp_dir_to_permanent_dir($target_path, "ticket");


      $ticket_id = $this->Support_entries_model->save($ticket_data, $id);
      $user_id = $this->db->query("SELECT user_ref_id from support_entries WHERE id={$ticket_id}")->row()->user_ref_id;
        $row_data = $this->db->query("SELECT CONCAT(first_name,' ',last_name) as username,email FROM users WHERE id={$user_id}")->row();

      //ticket added. now add a comment in this ticket

      if ($ticket_id) {
          $comment_data = array(
              "description" => $this->input->post('description'),
              "ticket_id" => $ticket_id,
              "created_by" => $this->login_user->id,
              "created_at" => $now,
              "files" => $files_data
          );

          $ticket_comment_id = $this->Support_comments_model->save($comment_data);
          $role_id = $this->db->query("SELECT * FROM roles WHERE title like '%ict%'")->row()->id;
          $it_users = $this->db->query("SELECT * from users WHERE role_id=$role_id")->result();


          // foreach($it_users as $it_user){
          $ticket_data = array(
              "ticket_id" => $ticket_id,
              "ticket_title" => $this->input->post('title'),
              "user_name" => $this->Users_model->get_one($this->login_user->id)->first_name,
              "ticket_content" => $this->input->post('description'),
              "ticket_url" => get_uri("tickets/view_support/" . $ticket_id),
              "send_to" => 'it.support@esl-eastafrica.com',
              'sender_name' => $this->login_user->first_name .' '.$this->login_user->last_name,
              'sender_email' => $this->login_user->email

          );

          $this->_support_ticket_created_mail($ticket_data);
          $this->_support_ticket_sender_mail($ticket_data);

          //}


              echo json_encode(array("success" => true, 'message' => lang('record_saved')));
          }
          else {
              echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
          }


  }

  /* upload a file */

  public function upload_file ()
  {
    upload_file_to_temp();
  }

  /* check valid file for ticket */

  public function validate_ticket_file ()
  {
    return validate_post_file($this->input->post("file_name"));
  }

    // return a row of ticket list table
  private function _row_data($id) {
    $options = array("id" => $id, "access_type" => $this->access_type);

    $data = $this->Tickets_model->get_details($options)->row();
    return $this->support_tickets_make_row($data);
  }

  public function SAGE_DB() {
    return $this->load->database('SAGE', TRUE);
  }

  public function HR_DB(){
   return  $this->load->database('HR',TRUE);
 }

 public function _issueMail($data) {

  $email_template = $this->Email_templates_model->get_final_template("ict_asset_issue");

  $parser_data["TO"] = $data['to'];
  $parser_data["FROM"] = $data["from"];
  $parser_data["ASSET"] = $data["asset"];
  $parser_data["ASSET_URL"] = $data["asset_url"];
  $parser_data["SIGNATURE"] = $email_template->signature;

  $message = $this->parser->parse_string($email_template->message, $parser_data, true);
  send_app_mail($data['send_to'], $email_template->subject, $message);
}

public function _acceptMail($data) {

  $email_template = $this->Email_templates_model->get_final_template("ict_asset_accept");

  $parser_data["TO"] = $data['to'];
  $parser_data["FROM"] = $data["from"];
  $parser_data["ASSET"] = $data["asset"];
  $parser_data["ASSET_URL"] = $data["asset_url"];
  $parser_data["SIGNATURE"] = $email_template->signature;

  $message = $this->parser->parse_string($email_template->message, $parser_data, true);
  send_app_mail($data['send_to'], $email_template->subject, $message);
}

public function _declineMail($data) {

  $email_template = $this->Email_templates_model->get_final_template("ict_asset_decline");

  $parser_data["TO"] = $data['to'];
  $parser_data["FROM"] = $data["from"];
  $parser_data["ASSET"] = $data["asset"];
  $parser_data["ASSET_URL"] = $data["asset_url"];
  $parser_data["SIGNATURE"] = $email_template->signature;

  $message = $this->parser->parse_string($email_template->message, $parser_data, true);
  send_app_mail($data['send_to'], $email_template->subject, $message);
}

public function _returnMail($data) {

  $email_template = $this->Email_templates_model->get_final_template("ict_asset_return");

  $parser_data["TO"] = $data['to'];
  $parser_data["FROM"] = $data["from"];
  $parser_data["ASSET"] = $data["asset"];
  $parser_data["ASSET_URL"] = $data["asset_url"];
  $parser_data["SIGNATURE"] = $email_template->signature;

  $message = $this->parser->parse_string($email_template->message, $parser_data, true);
  send_app_mail($data['send_to'], $email_template->subject, $message);
}

public function _desposeMail($data) {

  $email_template = $this->Email_templates_model->get_final_template("ict_asset_disposal");

  $parser_data["TO"] = $data['to'];
  $parser_data["FROM"] = $data["from"];
  $parser_data["ASSET"] = $data["asset"];
  $parser_data["ASSET_URL"] = $data["asset_url"];
  $parser_data["DISPOSAL_DATE"] = $data["disposal_date"];
  $parser_data["SIGNATURE"] = $email_template->signature;

  $message = $this->parser->parse_string($email_template->message, $parser_data, true);
  send_app_mail($data['send_to'], $email_template->subject, $message);
}

public function _support_ticket_created_mail($data) {

  $email_template = $this->Email_templates_model->get_final_template("ticket_created");

  $parser_data["TICKET_ID"] = $data['ticket_id'];
  $parser_data["TICKET_TITLE"] = $data["ticket_title"];
  $parser_data["USER_NAME"] = $data["user_name"];
  $parser_data["TICKET_CONTENT"] = $data["ticket_content"];
  $parser_data["TICKET_URL"] = $data["ticket_url"];
  $parser_data["SIGNATURE"] = $email_template->signature;

  $message = $this->parser->parse_string($email_template->message, $parser_data, true);
  send_app_mail($data['send_to'], $email_template->subject, $message);
}

    public function _support_ticket_sender_mail($data) {

        $email_template = $this->Email_templates_model->get_final_template("ticket_created");

        $parser_data["TICKET_ID"] = $data['ticket_id'];
        $parser_data["TICKET_TITLE"] = $data["ticket_title"];
        $parser_data["USER_NAME"] = $data["sender_name"];
        $parser_data["TICKET_CONTENT"] = $data["ticket_content"];
        $parser_data["TICKET_URL"] = $data["ticket_url"];
        $parser_data["SIGNATURE"] = $email_template->signature;

        $message = $this->parser->parse_string($email_template->message, $parser_data, true);
        send_app_mail($data['sender_email'], $email_template->subject, $message);
    }


}
