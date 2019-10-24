<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once("Pre_loader.php");

class Knowledge_base extends Pre_loader
{

    function index()
    {
        $viewdata = [];
        $types = $this->TblKnowledgeBaseTypesModel->getall()->result();

        foreach ($types as $type) {
            $type->knowledges = $this->TblKnowledgeBaseModel->getTypeKNowledges($type->id)->result();
                
        }
        
        $viewdata['types'] = $types;
       $this->template->rander("knowledgebase/index2", $viewdata);
    }


    function search()
       {

       $term = $_GET['term'];

       

        /* if (!$term) {
             redirect('/knowledge_base', 'location');
         }*/
      

        $sql = "SELECT * FROM tbl_knowledge_base WHERE  title like '%$term%' or solution like '%term%'";

       $viewdata = [];
        $viewdata['data'] = $this->db->query($sql)->result();
        $this->template->rander("knowledgebase/searchresult", $viewdata);

    }

    function indexi()
    {
        $viewdata = [];
        $viewdata['types'] = $this->TblKnowledgeBaseTypesModel->getall()->result();
        $this->template->rander("knowledgebase/index", $viewdata);
    }

    function viewknowledge($id)
        {
            $this->TblKnowledgeBaseModel->update_count($id);
        $viewdata = [];
        $base = $this->TblKnowledgeBaseModel->get_knowledge_details($id)->row();
        $base->type = $this->TblKnowledgeBaseTypesModel->get_details($base->type_id)->row();
        $viewdata['viewdata'] = $base;

        $this->template->rander("knowledgebase/viewknowledge", $viewdata);
    }

    function list_data()
    {
        $list_data = $this->TblKnowledgeBaseModel->get_details()->result();
        $result = array();
        foreach ($list_data as $key => $data) {
            $key += 1;
            $result[] = $this->_make_row($data, $key);
        }

        echo json_encode(array("data" => $result));
    }
    public function download_knowledgebase_files($id) {

          $filo = $this->db->query("SELECT * FROM tbl_knowledge_base WHERE id=$id")->row()->image;
          
          download_app_files(get_setting("knowledgebase_file_path"), $filo);
        }

    private function _make_row($data, $key)
    {
        $options = "";

        $type = $this->TblKnowledgeBaseTypesModel->get_details($data->type_id)->row();

        $options .= modal_anchor(get_uri("knowledge_base/knowledge_base_modal_form"), "<i class='fa fa-pencil'></i>",
            array("class" => "edit", "title" => 'Update Knowledge base', "data-post-id" => $data->id));

        $options .= js_anchor("<i class='fa fa-times fa-fw'></i>", array('title' => 'Delete', "class" => "delete", "data-id" => $data->id, "data-action-url" => get_uri("knowledge_base/delete"), "data-action" => "delete"));

        return array($key++,
            $data->title,
            ($type) ? ($type->name) : '-',
            $data->solution,
            $data->hits,
            $data->created_at,
            $options

        );
    }


    function delete()
    {
        $id = $this->input->post('id');

        $deleted = false;
        if ($id) {
            $this->TblKnowledgeBaseModel->row_delete($id);
            $deleted = true;
        }
        echo json_encode(array("success" => $deleted, 'message' => (!$deleted) ? lang('record_cannot_be_deleted') : lang('record_deleted')));

    }

    function knowledge_base_modal_form()
    {
        //get data
        $id = $this->input->post('id');
        $viewdata = [];
        $viewdata['types'] = $this->TblKnowledgeBaseTypesModel->get_dropdown_list(array('name'));;
        $viewdata['model_info'] = $this->TblKnowledgeBaseModel->getOne($id);
        $this->load->view("knowledgebase/modal_form", $viewdata);

    }



    function save_form_data()
    {
        $datasaved = false;
        $id = $this->input->post('id');
        $target_path = get_setting("knowledgebase_file_path");

        $files_data = move_files_from_temp_dir_to_permanent_dir($target_path, "knowledgebase");
        validate_submitted_data(array(
            "title" => "required",
            "type_id" => "required",
            "solution" => "required",

        ));
        // $image_path = realpath(APPPATH . '../files/knowledgebase');
        // $savedimage = "";
        // if ($_FILES) {
        //     $path = $_FILES['imagefile']['name'];
        //     $ext = pathinfo($path, PATHINFO_EXTENSION);
        //     $imagename = time() . "." . pathinfo($path, PATHINFO_EXTENSION);
        //     move_uploaded_file(
        //         $_FILES['imagefile']['tmp_name'],
        //         $image_path . "/" . $imagename
        //     );

        //     $savedimage = $imagename;
        // }

        $data = array(
            "title" => $this->input->post('title'),
            "type_id" => (int)$this->input->post('type_id'),
            "solution" => $this->input->post('solution'),
            "image" => $files_data,
            'created_by' => $this->login_user->id,
            'created_at' => date('Y-m-d H:i:s')
        );


        if ($this->TblKnowledgeBaseModel->save($data, $id)) {
            $datasaved = true;
        }
        echo json_encode(array("success" => $datasaved, 'message' => lang('record_saved')));
    }

/* upload a file */

public function upload_file ()
{
  upload_file_to_temp();
}

/* check valid file for ticket */

public function validate_file ()
{
  return validate_post_file($this->input->post("file_name"));
}

    function knowledge_base_types_modal_form()
    {
        $this->load->view("knowledgebase/types_modal_form");
    }

    function save_type()
    {
        $datasaved = false;
        $id = $this->input->post('id');

        validate_submitted_data(array(
            "name" => "required",

        ));

        $data = array(
            "name" => $this->input->post('name'),
        );


        if ($this->TblKnowledgeBaseTypesModel->save($data, $id)) {
            $datasaved = true;
        }
        echo json_encode(array("success" => $datasaved, 'message' => lang('record_saved')));
    }

    function reports(){
    $view_data['details'] = $this->db->query("SELECT * FROM tbl_knowledge_base_types")->result();
    $this->template->rander("knowledgebase/form",$view_data);
    }

    function reports_index(){

    $view_data['dates'] = array('from' =>$this->input->post('start_date'),'to' =>$this->input->post('end_date'));
    $result = $this->input->post('type') == 0 ? $this->db->query("SELECT tbl_knowledge_base.*,tbl_knowledge_base_types.name FROM tbl_knowledge_base
  LEFT JOIN tbl_knowledge_base_types ON tbl_knowledge_base_types.id=tbl_knowledge_base.type_id WHERE 
  (tbl_knowledge_base.created_at BETWEEN '{$this->input->post('start_date')}' AND '{$this->input->post('end_date')}')")->result() :
        $this->db->query("SELECT tbl_knowledge_base.*,tbl_knowledge_base_types.name FROM tbl_knowledge_base
  LEFT JOIN tbl_knowledge_base_types ON tbl_knowledge_base_types.id=tbl_knowledge_base.type_id WHERE tbl_knowledge_base.type_id={$this->input->post("type")} AND (tbl_knowledge_base.created_at BETWEEN '{$this->input->post('start_date')}' AND '{$this->input->post('end_date')}')")->result();
    $view_data['reports'] = $result;
    $this->template->rander("knowledgebase/index_form",$view_data);
    }

    function print_form($from,$to){
        $view_data['reports'] = $this->db->query("SELECT tbl_knowledge_base.*,tbl_knowledge_base_types.name FROM tbl_knowledge_base
  LEFT JOIN tbl_knowledge_base_types ON tbl_knowledge_base_types.id=tbl_knowledge_base.type_id WHERE 
  (tbl_knowledge_base.created_at BETWEEN '{$from}' AND '{$to}')")->result();

        $this->load->library('pdf2');
        $this->pdf2->load_view('knowledgebase/print_form', $view_data);
        $this->pdf2->render();
        $this->pdf2->stream('knowledgebase.pdf');
    }

    public function extract_k($from,$to)
    {
        $this->load->library("excel");
        $object = new PHPExcel();

        $object->setActiveSheetIndex(0);

        $table_columns = array("Title", "Type", "solution", "Hits","Date");

        $column = 0;

        foreach($table_columns as $field)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
            $column++;
        }

        $employee_data =$this->db->query("SELECT tbl_knowledge_base.*,tbl_knowledge_base_types.name FROM tbl_knowledge_base
  LEFT JOIN tbl_knowledge_base_types ON tbl_knowledge_base_types.id=tbl_knowledge_base.type_id WHERE 
  (tbl_knowledge_base.created_at BETWEEN '{$from}' AND '{$to}')")->result();
        $excel_row = 2;

        foreach($employee_data as $row)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->title);
            $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->name);
            $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->solution);
            $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->hits);
            $object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, date('d-m-Y',strtotime($row->created_at)));
            $excel_row++;
        }

        $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="Knowledgebase Data.xls"');
        $object_writer->save('php://output');
    }

}
