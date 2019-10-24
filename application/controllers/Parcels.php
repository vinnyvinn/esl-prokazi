<?php

if (!defined('BASEPATH'))
	exit('No direct script access allowed');
require_once("Pre_loader.php");

class Parcels extends Pre_loader {

	public function __construct() {
		parent::__construct();
		$this->load->helper(array('form', 'url'));
	}

	function index() {
		// $this->template->rander("parcels/index");
        redirect("forbidden");
    }

    function inwards() {
      $receiver = $this->login_user->id;
        $view_data['parcels'] = $this->db->query("SELECT parcel_inwards.*,CONCAT(users.first_name,' ',users.last_name) 
            as received FROM parcel_inwards
            LEFT JOIN users ON users.id=parcel_inwards.receiver_id WHERE parcel_inwards.deleted=0 AND parcel_inwards.receiver_id=$receiver")->result();
        $this->template->rander("parcels/inwards_index",$view_data);
    }
    function items(){
        $view_data['parcels'] = $this->db->query("SELECT parcel_details.*,CONCAT(users.first_name,' ',users.last_name) as received FROM parcel_details
            LEFT JOIN users ON users.id=parcel_details.receiver")->result();
        $this->template->rander("parcels/items_index",$view_data);
    }
    function dispatch_items(){

        $view_data['parcels'] = $this->db->query("SELECT dispatch_parcel.*,CONCAT(users.first_name,' ',users.last_name) as sent FROM dispatch_parcel
            LEFT JOIN users ON users.id=dispatch_parcel.sender")->result();
        $this->template->rander("parcels/dispatch_index",$view_data);
    }
    function parcel_inward_modal($id){
       $view_data['parcel_id'] = $id;
       $view_data['parcels'] = $this->db->query("SELECT dispatch_parcel.*,CONCAT(users.first_name,' ',users.last_name) as sent FROM dispatch_parcel
        LEFT JOIN users ON users.id=dispatch_parcel.sender")->result();
       $view_data['receivers_dropdown'] = $this->Users_model->get_all_where(array('deleted' =>0))->result();
       $this->load->view("parcels/parcel_inwards_form",$view_data);
   }
   public function outwards(){
    $view_data['parcels'] = $this->db->query("SELECT mailing_parcel_outwards.*,CONCAT(users.first_name,' ',users.last_name) 
        as reception FROM mailing_parcel_outwards
        LEFT JOIN users ON users.id = mailing_parcel_outwards.receptionist_id WHERE mailing_parcel_outwards.deleted=0")->result();
    $this->template->rander("parcels/outwards_index",$view_data);
}
function cheque_inwards(){
   $view_data['parcels'] = $this->db->query("SELECT cheque_details.*,CONCAT(users.first_name,' ',users.last_name) as received FROM cheque_details
    LEFT JOIN users ON users.id=cheque_details.receiver")->result();
   $this->template->rander("parcels/cheques/inwards_index",$view_data);
}

function cheque_outwards(){
   $view_data['parcels'] = $this->db->query("SELECT cheque_details_outwards.*,CONCAT(users.first_name,' ',users.last_name) as received FROM cheque_details_outwards
    LEFT JOIN users ON users.id=cheque_details_outwards.sender")->result();
   $this->template->rander("parcels/cheques/outwards_index",$view_data);
}

function save_inwards_parcel(){
    $status = ['status' => 1];
    $this->db->where('id',$this->input->post('id'));
    $this->db->update('parcel_details',$status);
     $target_path = get_setting("inward_file_path");
     $files_data = move_files_from_temp_dir_to_permanent_dir($target_path, "inward");
    $data = array(
        'title' => $this->input->post('title'),
        'description' => $this->input->post('description'),
        'receptionist_id' => $this->login_user->id,
        'receiver_id' => $this->input->post('receiver_id'),
        'parcel_date' => $this->input->post('parcel_date'),
        'sender'  => $this->input->post('sender'),
        'files' => $files_data,
    );

    $this->db->insert('parcel_inwards',$data);
    $saved_id = $this->db->insert_id();

    if($saved_id){

   echo json_encode(array("success" => true, 'message' => lang('record_saved')));
} else {
 echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
}

}
function inwards_list_data() {

    if ($this->login_user->is_admin || $this->login_user->role_id == 7) {
    $list_data = $this->Mailing_parcel_model->get_all_where(array("activity_id" => 3, "deleted" => 0))->result();
} elseif ($this->login_user->role_id == 2) {
    $list_data = $this->Mailing_parcel_model->get_all_where(array("activity_id" => 3, "receiver_id" => $this->login_user->id, "deleted" => 0))->result();
}


$result = array();
foreach ($list_data as $data) {
    $result[] = $this->inwards_make_row($data);
}
echo json_encode(array("data" => $result));
}
public function add_parcel(){
  $data = array(
      'title' => $this->input->post('title'),
      'description' => $this->input->post('description'),
      'sender' => $this->input->post('sender'),
      'receiver' => $this->login_user->id,
  );

  $this->Parcel_details_model->save($data);
  return redirect(base_url('parcels/items'));
}

public function add_dispatch(){
  $data = array(
      'title' => $this->input->post('title'),
      'description' => $this->input->post('description'),
      'sender' => $this->login_user->id,
      'receiver' => $this->input->post('receiver'),
  );

  $this->Dispatch_parcel_model->save($data);
  return redirect(base_url('parcels/dispatch_items'));
}

public function add_cheque(){
  $data = array(
      'title' => $this->input->post('title'),
      'description' => $this->input->post('description'),
      'sender' => $this->input->post('sender'),
      'receiver' => $this->login_user->id,
      'cheque_no' => $this->input->post('cheque_no'),
      'cheque_date' => $this->input->post('cheque_date'),
      'cheque_amount' => $this->input->post('cheque_amount'),
  );

  $this->db->insert('cheque_details',$data);
  return redirect(base_url('parcels/cheque_inwards'));
}
public function add_cheque_outwards(){
  $data = array(
      'title' => $this->input->post('title'),
      'description' => $this->input->post('description'),
      'sender' => $this->login_user->id,
      'receiver' => $this->input->post('receiver'),
      'cheque_no' => $this->input->post('cheque_no'),
  );

  $this->db->insert('cheque_details_outwards',$data);
  return redirect(base_url('parcels/cheque_outwards'));
}
public function view_inward($id){
    
 $parcel = $this->db->query("SELECT * FROM parcel_inwards WHERE id=$id")->row();
 
 //$view_data['sender'] = $this->Users_model->get_one($parcel->sender_id);
 $view_data['receiver'] = $this->Users_model->get_one($parcel->receiver_id);
 $view_data['parcels'] = $parcel;
 $this->template->rander('parcels/inwards_single',$view_data);
}

public function view_outward($id){
 $parcel = $this->Mailing_parcel_outwards_model->get_one($id);
 $view_data['sender'] = $this->Users_model->get_one($parcel->sender_id);
 $view_data['parcels'] = $parcel;
 $this->template->rander('parcels/outwards_single',$view_data);
}
public function download_inward_files($id) {
    
    $files = $this->db->query("SELECT * FROM  parcel_inwards WHERE id=$id")->row()->files;
     
     download_app_files(get_setting("inward_file_path"), $files);

}
public function download_outward_files($id) {

    $files = $this->Mailing_parcel_outwards_model->get_one($id)->files;
    download_app_files(get_setting("outward_file_path"), $files);

}
private function inwards_make_row($data) {

    $title = anchor(get_uri("parcels/view_inward/".$data->id), ucwords($data->title));

    if ($data->status == 0) {
    $status = $this->login_user->is_admin ? "<button type=\"button\" class=\"btn btn-info\">Processing</button>" : "<button type=\"button\" class=\"btn btn-info\">Process</button>";
} elseif ($data->status == 1) {
    $status = "<button type=\"button\" class=\"btn btn-success\">Collected</button>";
} elseif ($data->status == 2) {
    $status = "<button type=\"button\" class=\"btn btn-danger\">Rejected</button>";
}

$optoins = NULL;
if ($this->login_user->is_admin) {
    if ($data->status == 0) {
    $optoins .= anchor(get_uri("parcels/delete/" . $data->id), "<i class='fa fa-trash'></i>");
}
} elseif ($this->login_user->role_id == 2) {
    if ($data->status == 0) {
    $optoins .= anchor(get_uri("parcels/accept/" . $data->id), "<i class='fa fa-check'></i>");
    $optoins .= anchor(get_uri("parcels/reject/" . $data->id), "<i class='fa fa-trash'></i>");
}
}

$activity = ucwords($this->Mailing_activity_model->get_one($data->activity_id)->title);

$sender = ucwords($this->Users_model->get_one($data->sender_id)->first_name . " " . $this->Users_model->get_one($data->sender_id)->last_name);

$receiver = ucwords($this->Users_model->get_one($data->receiver_id)->first_name . " " . $this->Users_model->get_one($data->receiver_id)->last_name);

return array(
    $data->id,
    $title,
            // $activity,
    $sender,
    $receiver,
    date("dS M Y",strtotime($data->created_at)),
    $status,
    $optoins
);
}

function outwards_list_data() {

    if ($this->login_user->is_admin || $this->login_user->role_id == 7) {
    $list_data = $this->Mailing_parcel_outwards_model->get_all_where(array("activity_id" => 4, "deleted" => 0))->result();
} elseif ($this->login_user->role_id == 2) {
    $list_data = $this->Mailing_parcel_outwards_model->get_all_where(array("activity_id" => 4, "sender_id" => $this->login_user->id, "deleted" => 0))->result();
}


$result = array();
foreach ($list_data as $data) {
    $result[] = $this->outwards_make_row($data);
}
echo json_encode(array("data" => $result));
}

private function outwards_make_row($data) {

    $title = anchor(get_uri("parcels/view_outward/". $data->id), ucwords($data->title));

    if ($data->status == 0) {
    $status = $this->login_user->is_admin ? "<button type=\"button\" class=\"btn btn-info\">Processing</button>" : "<button type=\"button\" class=\"btn btn-info\">Process</button>";
} elseif ($data->status == 1) {
    $status = "<button type=\"button\" class=\"btn btn-success\">Collected</button>";
} elseif ($data->status == 2) {
    $status = "<button type=\"button\" class=\"btn btn-danger\">Rejected</button>";
}

$optoins = NULL;
if ($this->login_user->is_admin) {
    if ($data->status == 0) {
    $optoins .= anchor(get_uri("parcels/delete/" . $data->id), "<i class='fa fa-trash'></i>");
}
} elseif ($this->login_user->role_id == 2) {
    if ($data->status == 0) {
    $optoins .= anchor(get_uri("parcels/accept/" . $data->id), "<i class='fa fa-check'></i>");
    $optoins .= anchor(get_uri("parcels/reject/" . $data->id), "<i class='fa fa-trash'></i>");
}
}

        //$activity = ucwords($this->Mailing_list_outwards_model->get_one($data->activity_id)->title);

    //$receiver = ucwords($this->Users_model->get_one($data->receiver_id)->first_name . " " . $this->Users_model->get_one($data->receiver_id)->last_name);

$sender = ucwords($this->Users_model->get_one($data->sender_id)->first_name . " " . $this->Users_model->get_one($data->sender_id)->last_name);

return array(
    $data->id,
    $title,
            // $activity,
    $sender,
    $data->receiver,
    date("dS M Y",strtotime($data->created_at)),
    $status,
    $optoins
);
}

public function accept($id = 0) {

    if (!$id) {
    return;
}

$data = ["status" => 1];
$this->db->where('id',$id);
$this->db->update('mailing_parcel_outwards',$data);
redirect("parcels/outwards");

}
public function accept_inwards($id = 0) {

    if (!$id) {
    return;
}

$data = ["status" => 1];
$this->db->where('id',$id);
$this->db->update('parcel_inwards',$data);
redirect("parcels/inwards");

}
public function reject($id = 0) {

    if (!$id) {
    return;
}

$data = ["status" => 2];
$this->db->where('id',$id);
$this->db->update('mailing_parcel_outwards',$data);
redirect("parcels/outwards");
}

public function reject_inwards($id = 0) {

    if (!$id) {
    return;
}

$data = ["status" => 2];
$this->db->where('id',$id);
$this->db->update('parcel_inwards',$data);
redirect("parcels/inwards");
}


public function delete($id = 0) {
    if (!$id) {
    return;
}

$data = ["deleted" => 1];

$this->db->where('id',$id);
$this->db->update('mailing_parcel_outwards',$data);
redirect("parcels/outwards");
}

public function delete_inwards($id = 0) {
    if (!$id) {
    return;
}

$data = ["deleted" => 1];

$this->db->where('id',$id);
$this->db->update('parcel_inwards',$data);
redirect("parcels/inwards");
}

function parcels_mailing_list () {
    	// $this->load->view('parcels/parcels_mailing_list');
    $this->template->rander("parcels/parcels_mailing_list");
}

function mailing_list_data () {

    $list_data = $this->Mailing_list_model->get_all_where(array("deleted" => 0))->result();


    $result = array();
    foreach ($list_data as $data) {
    $result[] = $this->_make_mailing_list_row($data);
}
echo json_encode(array("data" => $result));
}

private function _make_mailing_list_row($data) {

    $title = modal_anchor(get_uri("parcels/view_modal"), ucwords($data->title), array("class" => "edit", "title" => "Mailing List Details", "data-post-id" => $data->id));

    if ($this->login_user->is_admin || $this->login_user->role_id == 7) {
    $optoins = NULL;
    $optoins .= anchor(get_uri("parcels/disapprove_parcels_mailing_list/" . $data->id), "<i class='fa fa-trash'></i>");
} elseif (!$this->login_user->is_admin && $this->login_user->role_id == 2) {
    $optoins = NULL;
}

return array($data->id, $title, $data->address, date("dS M Y",strtotime($data->created_at)), $optoins);
}

function modal_form_mailing_list () {
 $this->load->view('parcels/modal_form_mailing_list');
}

function save_mailing_list () {
    $data = array(
        "title" => $this->input->post('title'),
        "address" => $this->input->post('address')
    );

    $save_id = $this->Mailing_list_model->save($data);

    if ($save_id) {
    echo json_encode(array("success" => true, 'message' => lang('record_saved')));
} else {
    echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
}
}

public function disapprove_parcels_mailing_list($id = 0) {

    if (!$id) {
    return;
}

$data = ["deleted" => 1];

if($this->Mailing_list_model->update_where($data, array("id" => $id))) {
            // echo json_encode(array("success" => true, 'message' => lang('record_updated')));
    redirect("parcels/parcels_mailing_list");
} else {
            // echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
    redirect("parcels/parcels_mailing_list");
}
}

function modal_form_mailing_categories () {
 $this->load->view('parcels/modal_form_mailing_categories');
}

function save_mailing_categories() {

    $data = array(
       "title" => $this->input->post('title'),
       "description" => $this->input->post('description')
   );

    $save_id = $this->Mailing_activity_model->save($data);

    if ($save_id) {
 echo json_encode(array("success" => true, 'message' => lang('record_saved')));
} else {
 echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
}
}
//uploads
public function upload_file ()
{
    upload_file_to_temp();
}

/* check valid file for ticket */

public function validate_file ()
{
    return validate_post_file($this->input->post("file_name"));
}

function modal_form_inwards($id) {

    $view_data['parcel_id'] = $id;
    $view_data['receivers_dropdown'] = $this->Users_model->get_all_where(array("deleted" => 0))->result();
    $this->load->view('cheques/inwards_modal_form',$view_data);

}

function modal_form_outwards($id) {

    $view_data['parcel_id'] = $id;
    $view_data['senders_dropdown'] = $this->Users_model->get_all_where(array("deleted" => 0))->result();
    $view_data['receivers_dropdown'] = $this->Mailing_list_model->get_all_where(array("deleted" => 0))->result();

    $this->load->view('parcels/modal_form_outwards', $view_data);
}

function save() {
 $target_path = get_setting("inward_file_path");

 $files_data = move_files_from_temp_dir_to_permanent_dir($target_path, "inward");
 $data = array(
    "activity_id" => $this->input->post('activity_id'),
    "user_id" => $this->login_user->id,
    "sender_id" => $this->login_user->id,
    "receiver_id" => $this->input->post('receiver_id'),
    "title" => $this->input->post('title'),
    "description" => $this->input->post('description'),
    "files" => $files_data,
); 

 $save_id = $this->Mailing_parcel_model->save($data);
 $status = ['status' =>1];
 $this->Parcel_details_model->update_where($status,array('id'=>$this->input->post('id')));

 if ($save_id) {
 echo json_encode(array("success" => true, 'message' => lang('record_saved')));
} else {
 echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
}
}

function save_outwards() {
    $target_path = get_setting("outward_file_path");
    $files_data = move_files_from_temp_dir_to_permanent_dir($target_path, "outward");
    $data = array(
        "activity_id" => $this->input->post('activity_id'),
        "sender_id" => $this->login_user->id,
        "receiver" => $this->input->post('receiver'),
        "title" => $this->input->post('title'),
        "description" => $this->input->post('description'),
        "receptionist_id" => $this->input->post('receptionist_id'),
        "files" => $files_data
    );

    $save_id = $this->Mailing_parcel_outwards_model->save($data);
    $status= ['status' =>1];
    $this->Dispatch_parcel_model->update_where($status,array('id' =>$this->input->post('parcel_id')));

    if ($save_id) {
    echo json_encode(array("success" => true, 'message' => lang('record_saved')));
} else {
    echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
}
}

function view_modal() {
 $id = $this->input->post('id');
 $list_data = $this->Mailing_parcel_model->get_all_where(array("id" => $id, "deleted" => 0))->result();

 $view_data['title'] = $list_data[0]->title;
 $view_data['description'] = $list_data[0]->description;

 $this->load->view('parcels/view_modal', $view_data);
}

}
