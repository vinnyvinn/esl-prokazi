<?php

class Parcel_details_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'parcel_details';
        parent::__construct($this->table);
    }



}