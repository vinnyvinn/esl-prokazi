<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once("Pre_loader.php");

class Outages extends Pre_loader {

   /**
    * Get All Data from this method.
    *
    * @return Response
   */

   public function __construct() {
    parent::__construct();
    
    
  }

  public function index(){
  	$this->template->rander('outages/index');
  }
 
 public function list_internets(){
 	$results = $this->Outages_model->internet_details();
 	

        $data = [];
        $data["links"] = $this->make_links($results, 20);
        $data["data"] = $results;
 	echo json_encode($data);
}
public function list_emails(){
 	$results = $this->Outages_model->internet_details();
 	

        $data = [];
        $data["links"] = $this->make_links($results, 20);
        $data["data"] = $results;
 	echo json_encode($data);

 }
 public function list_erps(){
 	
$results = $this->Outages_model->internet_details();
 	

        $data = [];
        $data["links"] = $this->make_links($results, 20);
        $data["data"] = $results;
 	echo json_encode($data);
 }
 public function list_smarts(){
 	
$results = $this->Outages_model->internet_details();
 	

        $data = [];
        $data["links"] = $this->make_links($results, 20);
        $data["data"] = $results;
 	echo json_encode($data);
 }
 public function list_payrolls(){
 	
 $results = $this->Outages_model->internet_details();
 	

        $data = [];
        $data["links"] = $this->make_links($results, 20);
        $data["data"] = $results;
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

      function delete()
    {
        $deleted = false;
        $postdata = json_decode(file_get_contents('php://input'));
        if ($this->Outages_model->delete($postdata->id)) {
            $deleted = true;
        }
        echo json_encode(array("success" => $deleted, 'message' => lang('record_saved')));
    }

    function save()
    {
        $datasaved = false;
        $postdata = json_decode(file_get_contents('php://input'));
        
            $data = array(
                "start_date" => $postdata->start_date,
                "start_time" => $postdata->type->start_time,
                "end_date" => $postdata->end_date,
                "end_time" => $postdata->end_time,
                "comment"=>$postdata->comment

            );
            if ($this->Outages_model->save($data, $postdata->id)) {
                $datasaved = true;
            }
        

        echo json_encode(array("success" => $datasaved, 'message' => lang('record_saved')));
    }

}