<?php

class Support_entries_model extends Crud_model {

    private $table = null;

    function __construct() {
        $this->table = 'support_entries';
        parent::__construct($this->table);
    }
  public function get_details(){
  	$this->db->query("SELECT * FROM support_entries")->result();
  }

     public function support_update($comment_id)
		{

	     $this->db->set('status','closed');
       $this->db->where('id',$comment_id);
       $this->db->update('support_entries');
	}

   public function support_update_open($status_id)
    {

       $this->db->set('status','open');
       $this->db->where('id',$status_id);
       $this->db->update('support_entries');
  }

  public function get_ict_members(){
    return $this->db->query("SELECT email FROM users WHERE role_id = 9")->result();
  }

  public function update_user($data){
       $this->db->set('assign_to',$data['assign_to']);
       $this->db->where('id',$data['id']);
       $this->db->update('support_entries');
  }

  public function get_logs_details(){
    return $this->db->query("SELECT support_entries.created_by,TIMESTAMPDIFF(MONTH,support_entries.created_at,support_entries.last_activity_at)
     as duration,support_entries.ticket_id as ticket,
      CONCAT(users.first_name,' ',users.last_name) as created_by_user,users.image as created_by_avatar, users.user_type FROM support_entries
      LEFT JOIN users ON users.id = support_entries.created_by WHERE support_entries.status like '%closed%'")->result();
  }
}