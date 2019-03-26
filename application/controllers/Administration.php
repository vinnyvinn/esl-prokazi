<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once("Pre_loader.php");

class Administration extends Pre_loader
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

    public function index(){

        $view_data['all_details'] = $this->db->query("SELECT id,location_id,CONCAT(first_name,' ',last_name) as username FROM users WHERE deleted=0")->result();
        $this->template->rander("administration/index", $view_data);

    }

    public function view_form($id){
       $user = $this->db->query("SELECT location_id,id,CONCAT(first_name,' ',last_name) as username FROM users WHERE id=$id")->row();

       $view_data['team'] = $user;
        $location = $user->location_id ? $this->SAGE_DB()->query("SELECT WhseLink,Code,CONCAT(Code,'-',Name) as location FROM WhseMst WHERE Code like '%$user->location_id%'")->row()->WhseLink :'';
        $view_data['location'] = $location;

        $view_data['users'] = $this->db->query("SELECT id,CONCAT(first_name,' ',last_name) as username FROM users WHERE deleted=0")->result();
        $view_data['locations_dropdown'] = $this->SAGE_DB()->query("SELECT WhseLink,Code,CONCAT(Code,'-',Name) as location FROM WhseMst")->result();


        $this->template->rander('administration/edit_form',$view_data);
    }

       public function updatelocation(){

       $data = array(
            'location_id' => $this->input->post('location_id')
       );
       $this->db->where('id', $this->input->post('username'));
       $this->db->update('users',$data);
       return redirect(base_url('administration'));

       }

    public function SAGE_DB(){
        return $this->load->database('SAGE',TRUE);
    }


}
