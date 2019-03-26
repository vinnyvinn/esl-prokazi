<?php
/**
 * Created by PhpStorm.
 * User: HP
 * Date: 14/12/2017
 * Time: 08:59
 */

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once("Pre_loader.php");

class Checklists extends Pre_loader
{

    function index(){
        $this->template->rander("checklists/index");
    }

    function list_checklists($performed_on = null)
    {
        $results = $this->TblChecklists->getAll((int)$performed_on);
        foreach ($results as $key => $result) {
            $type = $this->TblChecklistPerformedOn->get_item($result->performed_on);
            $key++;
            $result->typeval =($type)?$type->name:'';
            $checked_on = '';
            $result->checked_on = $checked_on;
            $result->keyval = $key;
        }

        $data = [];
        $data["links"] = $this->make_links($results, 20);
        $data["data"] = $results;

        echo json_encode($data);
    }
    function list_types(){
        $data = $this->db->query("SELECT * FROM tbl_checklist_performed_on")->result();
        echo json_encode($data);

    }

    function make_links($results, $current_page, $per_page = 10)
    {
        return array("pagination" => [
            "total" => count($results),
            "per_page" => $per_page,
            "current_page" => $current_page,
            "last_page" => 4,
            "next_page_url" => "...",
            "prev_page_url" => "...",
            "from" => 1,
            "to" => 15,
        ]);

    }

    function checklist_types(){
        $data = $this->TblChecklistPerformedOn->getAll();
        echo json_encode($data);
    }


    function save()
    {
        $datasaved = false;
        $postdata = json_decode(file_get_contents('php://input'));
        if((int)$postdata->type->value){
            $data = array(
                "name" => $postdata->name,
                "performed_on" => (int)$postdata->type->value,
                "comment"=>$postdata->comment

            );
            if ($this->TblChecklists->save($data, $postdata->id)) {
                $datasaved = true;
            }
        }

        echo json_encode(array("success" => $datasaved, 'message' => lang('record_saved')));
    }

    function delete()
    {
        $deleted = false;
        $postdata = json_decode(file_get_contents('php://input'));
        if ($this->TblChecklists->delete($postdata->id)) {
            $deleted = true;
        }
        echo json_encode(array("success" => $deleted, 'message' => lang('record_saved')));
    }

    function ict_users(){
        $users = $this->Users_model->get_details(['user_type'=>'staff'])->result();
        echo json_encode($users);
    }

function  get_details(){
          $start_date = $this->input->post('start_date');
          $end_date   = $this->input->post('end_date');
        $view_data['dates'] = array('from' =>$start_date,'to'=>$end_date);
        $view_data['checklists'] = $this->db->query("SELECT tbl_checklist_tasks.*,CONCAT(users.first_name,' ',users.last_name) as username,
       tbl_checklist_status.name as state  FROM tbl_checklist_tasks
       LEFT JOIN users ON users.id=tbl_checklist_tasks.performed_by 
       LEFT JOIN tbl_checklist_status ON tbl_checklist_status.id=tbl_checklist_tasks.status
       WHERE (tbl_checklist_tasks.performed_on BETWEEN '$start_date' AND '$end_date')")->result();

    $this->template->rander('checklists/reports/checklists/index2',$view_data);
}
    function reports(){
$this->template->rander('checklists/reports/checklists/checklist_form');
    }

    public function print_report($from,$to)
    {
       $view_data['checklists'] = $this->db->query("SELECT tbl_checklist_tasks.*,CONCAT(users.first_name,' ',users.last_name) as username,
       tbl_checklist_status.name as state  FROM tbl_checklist_tasks
       LEFT JOIN users ON users.id=tbl_checklist_tasks.performed_by 
       LEFT JOIN tbl_checklist_status ON tbl_checklist_status.id=tbl_checklist_tasks.status
       WHERE (tbl_checklist_tasks.performed_on BETWEEN '$from' AND '$to')")->result();
        $this->load->library('pdf2');
        $this->pdf2->load_view('checklists/reports/checklists/print_form', $view_data);
        $this->pdf2->render();
        $this->pdf2->stream('checklist.pdf');
    }
    public function view_checklist($id){
       $view_data['checklist'] = $this->db->query("SELECT tbl_checklist_tasks.*,CONCAT(users.first_name,' ',users.last_name) as username,
       tbl_checklist_status.name as state  FROM tbl_checklist_tasks
       LEFT JOIN users ON users.id=tbl_checklist_tasks.performed_by 
       LEFT JOIN tbl_checklist_status ON tbl_checklist_status.id=tbl_checklist_tasks.status
       WHERE tbl_checklist_tasks.id=$id")->row();
        return $this->template->rander('checklists/reports/checklists/single_index',$view_data);
    }

    public function index_types(){
        $view_data['types'] = $this->db->query("SELECT * FROM tbl_checklist_performed_on")->result();
        
        $this->template->rander('checklists/maintenance/list_index',$view_data);
    }
public function add_type()
  {
   
    $data = array(
     'name' => $this->input->post('name'),
       
   );

    $this->db->insert('tbl_checklist_performed_on',$data);

    echo json_encode(array("status" => TRUE));

  }

  public function type_edit($id)
  {
    $data = $this->TblChecklists->get_type_id($id);
    echo json_encode($data);
  }
  public function type_update()
  {
    
   $data = array(
     'name' => $this->input->post('name'),
             
   );
   $this->TblChecklists->type_update(array('id' => $this->input->post('id')), $data);
   
   echo json_encode(array("status" => TRUE));
   

 }


 public function type_delete($id)
 {
  $this->TblChecklists->delete_type($id);
  echo json_encode(array("status" => TRUE));
}
}