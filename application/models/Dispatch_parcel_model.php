<?php

class Dispatch_parcel_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'dispatch_parcel';
        parent::__construct($this->table);
    }



}