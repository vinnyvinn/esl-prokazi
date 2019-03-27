<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require_once("Pre_loader.php");

class Locations extends Pre_loader {

    /**
     * Get All Data from this method.
     *
     * @return Response
     */

    public function __construct() {
        parent::__construct();

    }
    public function index(){

        $view_data['locations']=$this->Locations_model->get_all_locations();
        $this->template->rander('maintenance/locations/index',$view_data);
    }

    public function add_location()
    {
        $data = array(
            'name' => $this->input->post('name'),

        );

        $insert = $this->Locations_model->add_location($data);
        echo json_encode(array("status" => TRUE));
    }
    public function location_edit($id)
    {
        $data = $this->Locations_model->get_location_by_id($id);
        echo json_encode($data);
    }
    public function location_update()
    {
        $data = array(
            'name' => $this->input->post('name'),
             );

        $this->Locations_model->location_update(array('id' => $this->input->post('id')), $data);
        echo json_encode(array("status" => TRUE));
    }
    public function delete($id)
    {
        $this->Locations_model->delete_location($id);
        echo json_encode(array("status" => TRUE));
    }
    public function SAGE_DB() {
        return $this->load->database('SAGE', TRUE);
    }

}
