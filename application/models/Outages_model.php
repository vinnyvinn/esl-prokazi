<?php

class Outages_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'outages';
        parent::__construct($this->table);
    }

public function internet_details(){
return $this->db->query("SELECT * FROM outages")->result();
}

}