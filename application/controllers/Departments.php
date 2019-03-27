  <?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  require_once("Pre_loader.php");

  class Departments extends Pre_loader {

  /**
  * Get All Data from this method.
  *
  * @return Response
  */

  public function __construct() {
  parent::__construct();


  }

  public function index(){
  $data['departments'] = $this->db->query("SELECT * FROM departments")->result();
  $this->template->rander("departments/index",$data);
  }


  public function dept_form(){
  $this->template->rander('departments/form');
  }
  public function modify_form($id){
  $data['department'] = $this->db->query("SELECT * FROM departments WHERE id=$id")->row();

  $this->template->rander('departments/edit-form',$data);
  }
  public function save_department(){
  $this->db->insert('departments',array('name' =>$this->input->post('name')));
  return redirect(base_url('departments'));
  }

  public function save_updated(){

  $this->db->where('id',$this->input->post('id'))->update('departments',array('name' =>$this->input->post('name')));
  return redirect(base_url('departments'));
  }
  public function trash($id){
  $this->db->where('id',$id)->delete('departments');
  return redirect(base_url('departments'));
  }

  }