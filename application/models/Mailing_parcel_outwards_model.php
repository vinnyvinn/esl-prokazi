<?php

class Mailing_parcel_outwards_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'mailing_parcel_outwards';
        parent::__construct($this->table);
    }

}
