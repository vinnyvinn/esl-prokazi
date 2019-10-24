<?php

class Ticket_types_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'ticket_types';
        parent::__construct($this->table);
    }

    function get_details($options = array()) {
        $ticket_types_table = $this->db->dbprefix('ticket_types');
        $where = "";
        $id = get_array_value($options, "id");
        if ($id) {
            $where = " AND $ticket_types_table.id=$id";
        }

        $sql = "SELECT $ticket_types_table.*
        FROM $ticket_types_table
        WHERE $ticket_types_table.deleted=0 $where";
        return $this->db->query($sql);
    }

    function ticket_closed($data){
        $this->db->set('last_activity_at', $data['last_activity_at']);
        $this->db->set('closed_date', $data['closed_date']);
        $this->db->set('status', $data['status']);
        $this->db->where('id', $data['id']);
        $this->db->update('support_entries');
    }

}
