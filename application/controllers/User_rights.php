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


}
