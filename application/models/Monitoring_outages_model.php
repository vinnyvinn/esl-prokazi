<?php


class Monitoring_outages_model extends Crud_model
{
    protected $table = null;

    public function __construct()
    {
        $this->table = 'monitoring_outages';
        parent::__construct($this->table);
    }
    public function get_emails(){
        return $this->db->query("SELECT * FROM monitoring_outages WHERE deleted=0 AND type like '%email%'")->result();
    }

    public function find_email($id){
        return $this->db->query("SELECT * FROM monitoring_outages WHERE deleted=0 AND id=$id")->row();
    }

    public function get_internets(){
        return $this->db->query("SELECT * FROM monitoring_outages WHERE deleted=0 AND type like '%internet%'")->result();
    }

    public function find_internet($id){
        return $this->db->query("SELECT * FROM monitoring_outages WHERE deleted=0 AND id=$id")->row();
    }
    public function get_erps(){
        return $this->db->query("SELECT * FROM monitoring_outages WHERE deleted=0 AND type like '%erp%'")->result();
    }
    public function find_erp($id){
        return $this->db->query("SELECT * FROM monitoring_outages WHERE deleted=0 AND id=$id")->row();
    }
    public function get_payrolls(){
        return $this->db->query("SELECT * FROM monitoring_outages WHERE deleted=0 AND type like '%payroll%'")->result();
    }
    public function find_payroll($id){
        return $this->db->query("SELECT * FROM monitoring_outages WHERE deleted=0 AND id=$id")->row();
    }
    public function get_smartships(){
        return $this->db->query("SELECT * FROM monitoring_outages WHERE deleted=0 AND type like '%smartship%'")->result();
    }
    public function find_smartship($id){
        return $this->db->query("SELECT * FROM monitoring_outages WHERE deleted=0 AND id=$id")->row();
    }

}
