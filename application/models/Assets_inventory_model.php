<?php

class Assets_inventory_model extends Crud_model {

private $table = null;

function __construct() {
$this->table = 'inventory_assets';
parent::__construct($this->table);
}

function getDetails(){
return $this->db->query("SELECT inventory_assets.*,CONCAT(users.first_name,' ',users.last_name) as username FROM inventory_assets
LEFT join  users ON users.id=inventory_assets.custodian")->result();
}
public function get_all_assets()
{
$this->db->from('assets');
$query=$this->db->get();
return $query->result_array();
}
function add_assets($data){
$this->db->insert('assets', $data);
return $this->db->insert_id();
}

public function get_assets_by_id($id)
{
    return $this->db->query("SELECT inventory_assets.*,CONCAT(users.first_name,' ',users.last_name) as username,departments.name as designation,departments.id as dept_id FROM inventory_assets
LEFT join  users ON users.id=inventory_assets.custodian
LEFT JOIN departments ON departments.id=inventory_assets.department WHERE inventory_assets.id=$id")->row();

return $query->row();
}
public function assets_update($where, $data)
{
$this->db->update($this->table, $data, $where);
return $this->db->affected_rows();
}

public function delete_asset($id)
{
$this->db->where('id', $id);
$this->db->delete($this->table);
}
}
