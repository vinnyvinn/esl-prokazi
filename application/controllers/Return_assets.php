<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require_once("Pre_loader.php");

class Return_assets extends Pre_loader
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
       $view_data['assets'] = $this->db->query("SELECT return_assets.id as r_id,return_assets.*,CONCAT(users.first_name,' ',users.last_name) as username,inventory_assets.*,inventory_assets.id as inv_id FROM return_assets 
        LEFT JOIN users on users.id=return_assets.user_id
        LEFT JOIN inventory_assets on inventory_assets.id=return_assets.asset_id
        WHERE return_assets.status='returned'")->result();

        $view_data['users'] = $this->db->query("SELECT DISTINCT users.*, CONCAT(users.first_name,' ',users.last_name) as username FROM users
JOIN return_assets on return_assets.user_id=users.id WHERE return_assets.status='issued'")->result();
        
        $this->template->rander('assets_inventory/returns/index',$view_data);
    }

    public function issues()
    {
        $view_data['assets'] = $this->db->query("SELECT return_assets.*,return_assets.id as r_id, return_assets.created_at as date, CONCAT(users.first_name,' ',users.last_name) as user_name,inventory_assets.*,inventory_assets.id as inv_id FROM return_assets 
        LEFT JOIN users on users.id=return_assets.user_id
        LEFT JOIN inventory_assets on inventory_assets.id=return_assets.asset_id
        WHERE return_assets.status='issued'")->result();


        $view_data['users'] = $this->db->query("SELECT id,CONCAT(first_name,' ',last_name) as username FROM users")->result();
        $view_data['all_assets'] = $this->db->query("SELECT * FROM inventory_assets")->result();

        $this->template->rander('assets_inventory/issues/index',$view_data);
    }
    public function save()
    {

         $asset_info = $this->db->query("SELECT * FROM inventory_assets WHERE id = {$this->input->post('asset_id')}")->row();
              if ($asset_info->assign_by==NULL) {
             $this->toastr->warning('Sorry, update asset details first.');
             return redirect(base_url('/return_assets/issues'));
            }  
//$this->toastr->success('Your account was created successfully');
        $date = date('Y-m-d');
       $rawData = array(
         'status' => 'issued',
         'asset_id' => $this->input->post('asset_id'),
         'user_id' => $this->input->post('user_id'),
         'created_by' => $this->login_user->first_name.' '.$this->login_user->last_name,
         'created_at' => $date,
         'updated_at' => $date
       );

        $this->db->insert('return_assets',$rawData);

         $to = $this->db->query("SELECT * FROM users WHERE id={$this->input->post('user_id')}")->row_array();
      $hr = $this->db->query("SELECT * FROM users WHERE job_title like '%Corporate Support : HR & Admin Manager%'")->row_array();
     
      $email_asset = array(
          'asset' => $asset_info->title,
          'to' => $to['first_name'] . ' ' . $to['last_name'],
          'to_email' => $to['email'],
          'from' => $this->login_user->first_name . ' ' . $this->login_user->last_name,
          'from_email' => $this->login_user->email,
          'cc' => $hr['first_name'] . ' ' . $hr['last_name'],
          'cc_email' => $hr['email'],
          'asset_id' => $this->input->post('asset_id'),
          'asset_url' => get_uri('return_assets/issues')
      );

      $this->_mail_asset($email_asset);
        return redirect(base_url('/return_assets/issues'));

    }

    public function updateAsset()
     {
            $asset_info = $this->db->query("SELECT * FROM inventory_assets WHERE id = {$this->input->post('asset_id')}")->row();
            if ($asset_info->assign_by==NULL) {
                   $this->toastr->warning('Sorry, update asset details first.');

             return redirect(base_url('/return_assets'));
            }   
            //$this->toastr->success('Your account was created successfully');
         $data = array('status' => 'returned','updated_at' => date('Y-m-d'));
         $criteria = array('user_id' => $this->input->post('user_id'),'asset_id' => $this->input->post('asset_id'));
         $this->db->where($criteria);
        $this->db->update('return_assets',$data);


     $to = $this->db->query("SELECT * FROM users WHERE id={$this->input->post('user_id')}")->row_array();
      $hr = $this->db->query("SELECT * FROM users WHERE job_title like '%Corporate Support : HR & Admin Manager%'")->row_array();
     
      $email_asset = array(
          'asset' => $asset_info->title,
          'to' => $to['first_name'] . ' ' . $to['last_name'],
          'to_email' => $to['email'],
          'from' => $this->login_user->first_name . ' ' . $this->login_user->last_name,
          'from_email' => $this->login_user->email,
          'cc' => $hr['first_name'] . ' ' . $hr['last_name'],
          'cc_email' => $hr['email'],
          'asset_id' => $this->input->post('asset_id'),
          'asset_url' => get_uri('return_assets'),
      );

      $this->_mail_asset($email_asset);
      return redirect(base_url('/return_assets'));

  }

public function view_form($id){

$asset = $this->db->query("SELECT return_assets.*,inventory_assets.*  FROM return_assets
 LEFT JOIN inventory_assets ON inventory_assets.id=return_assets.asset_id
 WHERE return_assets.id=$id")->row();
$user= $this->db->query("SELECT * FROM users WHERE id={$asset->user_id}")->row();

$view_data['id'] = $id;
$view_data['asset'] =$asset;
$view_data['custodian'] = $user->first_name.' '.$user->last_name;
$view_data['from'] =$asset->created_by;
$view_data['hr'] = $this->db->query("SELECT * FROM users WHERE job_title like '%Corporate Support : HR & Admin Manager%'")->row_array();
$this->template->rander('assets_inventory/add_asset',$view_data);
}
public function view_form_r($id){

$asset = $this->db->query("SELECT return_assets.*,inventory_assets.*  FROM return_assets
 LEFT JOIN inventory_assets ON inventory_assets.id=return_assets.asset_id
 WHERE return_assets.id=$id")->row();
$user= $this->db->query("SELECT * FROM users WHERE id={$asset->user_id}")->row();

$view_data['id'] = $id;
$view_data['asset'] =$asset;
$view_data['custodian'] = $user->first_name.' '.$user->last_name;
$view_data['from'] =$asset->created_by;
$view_data['hr'] = $this->db->query("SELECT * FROM users WHERE job_title like '%Corporate Support : HR & Admin Manager%'")->row_array();
$this->template->rander('assets_inventory/add_asset_r',$view_data);
}

    public function getAssets()
    {
        $assets = $this->db->query("SELECT return_assets.*,inventory_assets.id as asset_ID,inventory_assets.card_no FROM return_assets
         JOIN inventory_assets on inventory_assets.id=return_assets.asset_id
         where return_assets.user_id={$this->input->post('user_id')} AND return_assets.status='issued'")->result();

        if (!$assets){
            echo json_encode('noassets');
        }

        echo json_encode($assets);
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

}
