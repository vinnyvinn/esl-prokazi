<?php

class Locations_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'locations';
        parent::__construct($this->table);
    }
    public function get_all_locations()
    {
        $this->db->from('locations');
        $query=$this->db->get();
        return $query->result_array();
    }
    function add_location($data){
        $this->db->insert('locations', $data);
        return $this->db->insert_id();
    }

    public function get_location_by_id($id)
    {
        $this->db->from($this->table);
        $this->db->where('id',$id);
        $query = $this->db->get();

        return $query->row();
    }
    public function location_update($where, $data)
    {
        $this->db->update($this->table, $data, $where);
        return $this->db->affected_rows();
    }

    public function delete_location($id)
    {
        $this->db->where('id', $id);
        $this->db->delete($this->table);
    }

}
