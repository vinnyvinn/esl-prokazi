<?php

class Cheques_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'cheques';
        parent::__construct($this->table);
    }


    function get_by_id($id){
    	return $this->db->query("SELECT * FROM cheque_details_outwards WHERE id=$id")->row();
    }

}
