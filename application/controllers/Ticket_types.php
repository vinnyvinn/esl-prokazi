<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once("Pre_loader.php");

class Ticket_types extends Pre_loader {

    function __construct() {
        parent::__construct();
       // $this->access_only_admin();
    }

    function index() {
        $this->template->rander("ticket_types/index");
    }
    function model_comment(){
      validate_submitted_data(array(
          "id" => "numeric"
      ));

      $view_data['model_info'] = $this->Ticket_types_model->get_one($this->input->post('id'));
      $view_data['tk_id'] = $this->session->ticket_ID;
      $this->load->view('ticket_types/comments_form',$view_data);
  }

  function add_comment()
  {
     $data=array('description' => $this->input->post('description'),
      'user_id' => $this->session->user_id);
     if($this->Ticket_types_model->insert_comment($data)){
       $saved = true;
   }

   echo json_encode(array("success" => true, 'message' => lang('record_saved')) );


}
  

function add_mark_solved($ticket_id){
    $entries = $this->db->query("SELECT support_entries.*,CONCAT(users.first_name,' ',users.last_name) as username,users.email FROM support_entries
 LEFT JOIN users ON users.id=support_entries.created_by
  WHERE support_entries.id=$ticket_id")->row();

 $email_data = array(
         'email' => $entries->email,
         'title' => $entries->title,
         'username' => $entries->username,
         'ticket_id' => $ticket_id,
         'ticket_url' => get_uri("knowledge_base"),
         );
        $this->_mail_solved($email_data);

  return redirect(base_url("tickets/view_support/".$ticket_id));
}

function add_mark_closed($ticket_id){

    $entries = $this->db->query("SELECT support_entries.*,CONCAT(users.first_name,' ',users.last_name) as username,users.email FROM support_entries
 LEFT JOIN users ON users.id=support_entries.created_by
  WHERE support_entries.id=$ticket_id")->row();

    $data = array('last_activity_at' =>  get_current_utc_time(),
                   'closed_date' => get_current_utc_time(),
                   'id' => $ticket_id,
                    'status' => 'closed',
                       );
     $this->Ticket_types_model->ticket_closed($data);
         $email_data = array(
         'email' => $entries->email,
         'username' => $entries->username,
         'ticket_id' => $ticket_id,
         'email_user' => $this->login_user->email,
         'closed_by' => $this->login_user->first_name .' '.$this->login_user->last_name,
         'cosed_date' => get_current_utc_time(),
         'ticket_url' => get_uri("knowledge_base"),
         );

         $this->_mail_closed($email_data);

  return redirect(base_url("tickets/view_support/".$this->session->TK_ID));
}

function modal_form() {

    validate_submitted_data(array(
        "id" => "numeric"
    ));

    $view_data['model_info'] = $this->Ticket_types_model->get_one($this->input->post('id'));
    $this->load->view('ticket_types/modal_form', $view_data);
}
function assign_modal($ticket_id){

 $ict = $this->db->query("SELECT * FROM roles WHERE title like '%ict%'")->row();
 $view_data['ict_memebers_dropdown'] = $this->db->query("SELECT email,CONCAT(first_name,' ',last_name) as username FROM users WHERE role_id=$ict->id")->result();
 $view_data['id'] = $ticket_id;
 $this->load->view('ticket_types/assign_modal_form',$view_data);
}

function assign_ticket(){

    $email = $this->input->post('assign_to');
    $tk_id = $this->input->post('id');
    $name=$this->db->query("SELECT email,id,CONCAT(first_name,' ',last_name) as username FROM users WHERE email= '$email'")->row_array();
    $assign_to='';
    $sender = '';

    $check_ticket = $this->db->query("SELECT * FROM support_entries where id={$tk_id}")->row();
    if($check_ticket->ticket_id=='system'){

        $assign_to = array("email" => $check_ticket->email ,
            "username" => $check_ticket->created_by,
            "ticket_id" => $tk_id,
            'created_at' => date('Y/m/d'),
            'ticket_title' => $check_ticket->title,
            'created_by' => $this->login_user->first_name .' '.$this->login_user->last_name,
            'ticket_url' => get_uri("tickets/view_support/".$tk_id),
        );

        $sender = array("email" => $check_ticket->email ,
            "assign_to" =>$name['username'],
            "ticket_id" => $tk_id,
            'created_at' => date('Y/m/d'),
            'username' => $check_ticket->created_by,
            'email_user' => $check_ticket->email,
            'ticket_url' => get_uri("tickets/view_support/".$tk_id),
        );

    }

    else{
        $tickets = $this->db->query("SELECT support_entries.*,CONCAT(users.first_name,' ',users.last_name) as username,users.email FROM support_entries
     LEFT JOIN users ON users.id = support_entries.created_by
     where support_entries.id=$tk_id")->row();

       $assign_to = array("email" => $email ,
            "username" => $name['username'],
            "ticket_id" => $this->input->post('id'),
            'created_at' => date('Y/m/d'),
            'ticket_title' => $tickets->title,
            'created_by' => $this->login_user->first_name .' '.$this->login_user->last_name,
            'ticket_url' => get_uri("tickets/view_support/".$this->input->post('id')),
        );



        $sender = array("email" => $email ,
            "assign_to" => $name['username'],
            "ticket_id" => $this->input->post('id'),
            'created_at' => date('Y/m/d'),
            'username' => $tickets->username,
            'email_user' => $tickets->email,
            'ticket_url' => get_uri("tickets/view_support/".$this->input->post('id')),
        );

    }

    $update_user = array(
        'id' => $this->input->post('id'),
        'assign_to' => $name['id']
    );
    $this->Support_entries_model->update_user($update_user);

  $this->_mail_ict_member($assign_to);
  $this->_mail_ticket_owner($sender);



  if($this->input->post('id')){
      echo json_encode(array("success" => true, 'message' => lang('record_saved')));
  }
  else {
      echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
  }



}
function save() {
    validate_submitted_data(array(
        "id" => "numeric",
        "title" => "required"
    ));


    $id = $this->input->post('id');
    $data = array(
        "title" => $this->input->post('title')
    );
    $save_id = $this->Ticket_types_model->save($data, $id);
    if ($save_id) {
        echo json_encode(array("success" => true, "data" => $this->_row_data($save_id), 'id' => $save_id, 'message' => lang('record_saved')));
    } else {
        echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
    }
}
public function save_ticket_status() {

  $data_comment=array('description' => $this->input->post('description'),
     'created_by' => $this->session->TK_OWNER,
     'created_at' => date('Y/m/d'),
     'ticket_id' => $this->session->TK_ID,
 );

  $comment_id = $this->Support_comments_model->save($data_comment);

  $this->Support_entries_model->support_update($this->session->TK_ID);

  if($comment_id){

     echo json_encode(array("success" => true, 'message' => lang('comment_submited')));

 } else {
    echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
}

}

public function mark_as_open(){

    $this->Support_entries_model->support_update_open($this->session->TK_ID);
}

function delete() {
    validate_submitted_data(array(
        "id" => "required|numeric"
    ));

    $id = $this->input->post('id');
    if ($this->input->post('undo')) {
        if ($this->Ticket_types_model->delete($id, true)) {
            echo json_encode(array("success" => true, "data" => $this->_row_data($id), "message" => lang('record_undone')));
        } else {
            echo json_encode(array("success" => false, lang('error_occurred')));
        }
    } else {
        if ($this->Ticket_types_model->delete($id)) {
            echo json_encode(array("success" => true, 'message' => lang('record_deleted')));
        } else {
            echo json_encode(array("success" => false, 'message' => lang('record_cannot_be_deleted')));
        }
    }
}

function list_data() {
    $list_data = $this->Ticket_types_model->get_details()->result();
    $result = array();
    foreach ($list_data as $data) {
        $result[] = $this->_make_row($data);
    }
    echo json_encode(array("data" => $result));
}

private function _row_data($id) {
    $options = array("id" => $id);
    $data = $this->Ticket_types_model->get_details($options)->row();
    return $this->_make_row($data);
}

private function _make_row($data) {
    return array($data->title,
        modal_anchor(get_uri("ticket_types/modal_form"), "<i class='fa fa-pencil'></i>", array("class" => "edit", "title" => lang('edit_ticket_type'), "data-post-id" => $data->id))
        . js_anchor("<i class='fa fa-times fa-fw'></i>", array('title' => lang('delete_ticket_type'), "class" => "delete", "data-id" => $data->id, "data-action-url" => get_uri("ticket_types/delete"), "data-action" => "delete"))
    );
}
public function _mail_ict_member($assign_to){
   $email_template = $this->Email_templates_model->get_final_template("assign_ticket");

   $parser_data["CREATED_BY"] =$assign_to['created_by'] ;
   $parser_data["CREATED_AT"] =  $assign_to['created_at'];
   $parser_data["TICKET_TITLE"] =  $assign_to['ticket_title'];
   $parser_data["USER_NAME"] =  $assign_to['username'];
   $parser_data["TICKET_URL"] =  $assign_to['ticket_url'];
   $parser_data["TICKET_ID"] =  $assign_to['ticket_id'];
   $parser_data["SIGNATURE"] = $email_template->signature;
   $message = $this->parser->parse_string($email_template->message, $parser_data, TRUE);

   send_app_mail($assign_to['email'], $email_template->subject, $message);
   

}
public function _mail_ticket_owner($sender){
   $email_template = $this->Email_templates_model->get_final_template("ticket_owner");

   $parser_data["USER_NAME"] =  $sender['username'];
   $parser_data["ASSIGNED_TO"] =  $sender['assign_to'];
   $parser_data["TICKET_URL"] =  $sender['ticket_url'];
   $parser_data["TICKET_ID"] =  $sender['ticket_id'];
   $parser_data["TITLE"] =  $sender['email_user'];
   $parser_data["SIGNATURE"] = $email_template->signature;
   $message = $this->parser->parse_string($email_template->message, $parser_data, TRUE);

   send_app_mail($sender['email_user'], $email_template->subject, $message);
   //return redirect(base_url("tickets/view_support/".$this->session->TK_ID));

 
}
 public function _mail_solved($email_data){
    $email_template = $this->Email_templates_model->get_final_template("ticket_solved");

   $parser_data["USER_NAME"] =  $email_data['username'];
   $parser_data["TICKET_URL"] =  $email_data['ticket_url'];
   $parser_data["TICKET_ID"] =  $email_data['ticket_id'];
   $parser_data["TITLE"] =  $email_data['title'];
   $parser_data["SIGNATURE"] = $email_template->signature;
   $message = $this->parser->parse_string($email_template->message, $parser_data, TRUE);

   send_app_mail($email_data['email'], $email_template->subject, $message);
  
 }

 public function _mail_closed($email_data){
    $email_template = $this->Email_templates_model->get_final_template("ticket_closed");

   $parser_data["USER_NAME"] =  $email_data['username'];
   $parser_data["TICKET_URL"] =  $email_data['ticket_url'];
   $parser_data["TICKET_ID"] =  $email_data['ticket_id'];
   $parser_data["CLOSED_BY"] =  $email_data['closed_by'];
   $parser_data["EMAIL_USER"] =  $email_data['email_user'];
   $parser_data["SIGNATURE"] = $email_template->signature;
   $message = $this->parser->parse_string($email_template->message, $parser_data, TRUE);

   send_app_mail($email_data['email'], $email_template->subject, $message);
    


 }


}

/* End of file ticket_types.php */
/* Location: ./application/controllers/ticket_types.php */
