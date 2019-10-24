<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once("Pre_loader.php");

class Inventory_requisitions extends Pre_loader {

    public function __construct() {
        parent::__construct();

    }
public  function index(){

        $user = $this->db->query("SELECT id FROM users WHERE id={$this->login_user->id}")->row();
       $details = [];
       if(get_array_value($this->login_user->permissions,'can_approve_inventory') ==1 || get_array_value($this->login_user->user_permissions,'can_approve_inventory') ==1){
           $details = $this->db->query("SELECT inventory_requisitions.*,sage_projects.description as projecto,users.location_id,CONCAT(users.first_name,' ',users.last_name) as username FROM inventory_requisitions
         LEFT JOIN sage_projects ON sage_projects.id = inventory_requisitions.sage_project_id
         LEFT JOIN users ON users.id=inventory_requisitions.user_id WHERE users.location_id like '%{$this->login_user->location_id}%'")->result();
       }
       if (get_array_value($this->login_user->permissions,'can_approve_inventory') !=1 || get_array_value($this->login_user->user_permissions,'can_approve_inventory') !=1){
           $details = $this->db->query("SELECT inventory_requisitions.*,sage_projects.description as projecto,users.location_id,CONCAT(users.first_name,' ',users.last_name) as username FROM inventory_requisitions
         LEFT JOIN sage_projects ON sage_projects.id = inventory_requisitions.sage_project_id
         LEFT JOIN users ON users.id=inventory_requisitions.user_id WHERE users.id={$this->login_user->id}")->result();
       }
    $view_data['all_data'] = $details;


    $this->template->rander("inventory_requisitions/index_2",$view_data);
}


    private function can_approve_inventory() {
        if ($this->login_user->user_type == "staff") {
            if ($this->login_user->is_admin) {
                return true;
            } else if (get_array_value($this->login_user->permissions, "can_approve_inventory") == "1" || get_array_value($this->login_user->user_permissions, "can_approve_inventory") == "1") {
                return true;
            }
        }
    }
    private function can_disapprove_inventory() {
        if ($this->login_user->user_type == "staff") {
            if ($this->login_user->is_admin) {
                return true;
            } else if (get_array_value($this->login_user->permissions, "can_disapprove_inventory") == "1" || get_array_value($this->login_user->user_permissions, "can_disapprove_inventory") == "1") {
                return true;
            }
        }
    }

      private function can_edit_inventory() {
        if ($this->login_user->user_type == "staff") {
            if ($this->login_user->is_admin) {
                return true;
            } else if (get_array_value($this->login_user->permissions, "can_edit_inventory") == "1" || get_array_value($this->login_user->user_permissions, "can_edit_inventory") == "1") {
                return true;
            }
        }
    }

    function list_data() {
       $list_data = $this->Inventory_requisitions_model->get_all_where(array("deleted" => 0))->result();
       $result = [];
       foreach ($list_data as $data) {
        $data->WHQtyOnHand = $this->SAGE_DB()->where('WHStockLink', $list_data[0]->StkItem_id)->get('WhseStk')->result()[0]->WHQtyOnHand;
        $data->available_quantity = $data->WHQtyOnHand - ($this->SAGE_DB()->where('WHStockLink', $data->StkItem_id)->get('WhseStk')->result()[0]->WHQtyReserved ? $this->SAGE_DB()->where('WHStockLink', $data->StkItem_id)->get('WhseStk')->result()[0]->WHQtyReserved : 0);
        $data->unit_of_measure = ($this->SAGE_DB()->where('idUnits', ($this->SAGE_DB()->where('StockLink', $data->StkItem_id)->get('StkItem')->result()[0]->iUOMStockingUnitID))->get('_etblUnits')->result()[0]->cUnitCode ? $this->SAGE_DB()->where('idUnits', ($this->SAGE_DB()->where('StockLink', $data->StkItem_id)->get('StkItem')->result()[0]->iUOMStockingUnitID))->get('_etblUnits')->result()[0]->cUnitCode : "Unit-Less");

        $data->status = $data->item_quantity <= $data->available_quantity ? $data->status : "Awaiting Stock";
        $result[] = $this->_make_row($data);
    }

    echo json_encode(array("data" => $result));


        // echo "<pre>";
        // print_r(array("data" => $result));

}

private function _make_row($data) {

    $title = modal_anchor(get_uri("inventory_requisitions/view_modal"), ucwords($data->item_name), array("class" => "edit", "title" => "Inventory requisitions Details", "data-post-id" => $data->id));

    if ($data->status == "Pending") {
        $status = "<button type=\"button\" class=\"btn btn-info\"> $data->status </button>";
    } elseif ($data->status == "Approved") {
        $status = "<button type=\"button\" class=\"btn btn-success\"> $data->status </button>";
    } elseif ($data->status == "Disapproved") {
        $status = "<button type=\"button\" class=\"btn btn-danger\"> $data->status </button>";
    } elseif ($data->status == "Awaiting Stock") {
        $status = "<button type=\"button\" class=\"btn btn-warning\"> $data->status </button>";
    }

    $optoins = NULL;
    $quantities = NULL;

   
        if ($data->status == "Pending" || $data->status == "Awaiting Stock") {
                 if (get_array_value($this->login_user->permissions,"can_approve_inventory") ==1 || get_array_value($this->login_user->user_permissions,"can_approve_inventory") ==1) {
            $optoins .= anchor(get_uri("inventory_requisitions/approve/" . $data->id), "<i class='fa fa-check'></i>");
        }
        if (get_array_value($this->login_user->permissions,"can_disapprove_inventory") ==1 || get_array_value($this->login_user->user_permissions,"can_disapprove_inventory") ==1){
            $optoins .= modal_anchor(get_uri("inventory_requisitions/modal_disapprove"), "<i class='fa fa-trash'></i>", array("class" => "edit", "title" => "Inventory Requisitions Disapproval", "data-post-id" => $data->id));
        }

            $quantities = modal_anchor(get_uri("inventory_requisitions/modal_edit"), $data->item_quantity . " / " . $data->available_quantity . " " . $data->unit_of_measure, array("class" => "edit", "title" => "Edit Inventory Requisition", "data-post-id" => $data->id));
                // } 
        } else {
            $optoins .= NULL;
            $quantities = $data->item_quantity . " / " . $data->available_quantity . " " . $data->unit_of_measure;
        }
    
    if ($this->can_edit_inventory()) {
        if ($data->status == "Pending" || $data->status == "Awaiting Stock") {     
            $quantities = modal_anchor(get_uri("inventory_requisitions/modal_edit"), $data->item_quantity . " " . $data->unit_of_measure, array("class" => "edit", "title" => "Edit Inventory Requisition", "data-post-id" => $data->id));
        } else {
            $quantities = $data->item_quantity . " " . $data->unit_of_measure;
        }
    }

    $sage_project = $this->SAGE_DB()->where('ProjectLink', $data->sage_project_id)->get('Project')->result()[0]->ProjectCode . " : " . $this->SAGE_DB()->where('ProjectLink', $data->sage_project_id)->get('Project')->result()[0]->ProjectName;

    return array($data->id, $title, $quantities, number_format(($data->item_quantity * $this->SAGE_DB()->where('StockLink', $data->item_id)->get('StkItem')->result()[0]->AveUCst), 2), $sage_project, date("dS M Y",strtotime($data->created_at)), $status, $optoins);
}

public function modal_edit() {
    $view_data['_id'] = $this->input->post('id');
    $this->load->view('inventory_requisitions/modal_edit', $view_data);
}

public function modal_disapprove() {

    $id = $this->input->post('id');

    $view_data['_id'] = $this->input->post('id');

    $this->load->view('inventory_requisitions/modal_disapprove', $view_data);
}

public function view_modal() {

    $id = $this->input->post('id');

    $list_data = $this->Inventory_requisitions_model->get_all_where(array("id" => $id, "deleted" => 0))->result();
    $user_data = $this->Users_model->get_all_where(array("id" => $list_data[0]->user_id, "deleted" => 0))->result();

    $view_data['user_name'] = $user_data[0]->first_name . " " . $user_data[0]->last_name;
    $view_data['item_name'] = $list_data[0]->item_name;

    $this->load->view('inventory_requisitions/view_modal', $view_data);
}

public function approve($id = 0) {
        $user_id = $this->login_user->id;
    $user = $this->db->query("SELECT * FROM users WHERE id=$user_id")->row();
    //var_dump($user);
    //die();
    $location = $user->location_id ? $this->SAGE_DB()->query("SELECT WhseLink,Code,CONCAT(Code,'-',Name) as location FROM WhseMst WHERE Code like '%$user->location_id%'")->row()->WhseLink :'';

    if (!$id) {
        return;
    }

    $data = ["status" => "Approved"];

    if($this->Inventory_requisitions_model->update_where($data, array("id" => $id, "deleted" => 0))) {

        $list_data = $this->Inventory_requisitions_model->get_all_where(array("id" => $id, "deleted" => 0))->result();

            // if (!$this->SAGE_DB()->get_where('_etblInvJrBatchLines', ["iStockID" => $list_data[0]->item_id])->result()) {
                // send to sage
        $_etblInvJrBatchLines = [
            'iInvJrBatchID' => get_setting('sage_IDInvJrBatches'),
            'iStockID' => $list_data[0]->item_id,
            'iWarehouseID' => $location ?: 1,
            'dTrDate' => date('Y-m-d'),
            'iTrCodeID' => get_setting('sage_TrCode'),
            'cReference' => "Issued Stock",
            'cDescription' => $list_data[0]->description,
            'fQtyOut' => $list_data[0]->item_quantity,
            'fNewCost' => $this->SAGE_DB()->where('StockLink', $list_data[0]->item_id)->get('StkItem')->result()[0]->AveUCst,
            'iProjectID' => $list_data[0]->sage_project_id
        ];

        $this->SAGE_DB()->insert('_etblInvJrBatchLines', $_etblInvJrBatchLines);
            // }
         $whrHseLoc = $location ?: 1;
         $item_id = $list_data[0]->item_id;
         $whs = $this->SAGE_DB()->query("SELECT * FROM WhseStk WHERE WHStockLink=$item_id AND WHWhseID=$whrHseLoc")->row();
         $d_ata = array('WHQtyOnHand'=>$whs->WHQtyOnHand - $list_data[0]->item_quantity);
            if($whs->WHQtyOnHand < $list_data[0]->item_quantity){
                return redirect(base_url('inventory_requisitions'));
            }
        $this->SAGE_DB()->where('WHStockLink', $list_data[0]->item_id)->update('WhseStk', $d_ata);

            $this->stock_arithmetics($id); // do some arithmetics on the stock item requested here

            // echo json_encode(array("success" => true, 'message' => lang('record_saved')));
        return redirect(base_url('inventory_requisitions'));
        } else {
            // echo "failed";
        return redirect(base_url('inventory_requisitions'));
        }
    }

    public function disapprove($id) {
        $data = ["status" => "Disapproved"];
        $this->Inventory_requisitions_model->update_where($data, array("id" => $id, "deleted" => 0));

            $this->mail_status($id);
            return redirect(base_url('inventory_requisitions'));

    }

    public function mail_status($id, $_reason = NULL) {

        $list_data = $this->db->query("SELECT inventory_requisitions.id, inventory_requisitions.item_name, inventory_requisitions.item_quantity, 
inventory_requisitions.StkItem_id, users.first_name, users.last_name, users.email, inventory_requisitions.created_at, inventory_requisitions.`status` 
FROM inventory_requisitions INNER JOIN users ON inventory_requisitions.user_id = users.id WHERE inventory_requisitions.id = " . $id)->result();

        foreach ($list_data as $key => $value) {

            $requisitions_amount = $this->SAGE_DB()->where('WHStockLink', $list_data[0]->StkItem_id)->get('WhseStk')->result()[0]->WHQtyOnHand;

            $data = ["requisitions_id" => $id, "requisitions_name" => $value->item_name, "first_name" => $value->first_name, "last_name" => $value->last_name,
                "requisitions_quantity" => $value->item_quantity,
                "requisitions_available" => $requisitions_amount, "requisitions_date" => date("dS M Y",strtotime($value->created_at)),
                "requisitions_status" => $value->status, "send_to" => $value->email, "_reason" => $_reason];

            $this->_Mailler($data);
        }
    }

    public function _Mailler($data) {


        $email_template = $this->Email_templates_model->get_final_template("inventory_requisitions");

        $parser_data["INVENTORY_REQUISITIONS_ID"] = $data['requisitions_id'];
        $parser_data["INVENTORY_REQUISITIONS_NAME"] = $data["requisitions_name"];
        $parser_data["CONTACT_FIRST_NAME"] = $data["first_name"];
        $parser_data["CONTACT_LAST_NAME"] = $data["last_name"];
        $parser_data["INVENTORY_REQUISITIONS_QUANTITY"] = $data['requisitions_quantity'];
        $parser_data["INVENTORY_REQUISITIONS_AVAILABLE"] = $data['requisitions_available'];
        $parser_data["INVENTORY_REQUISITIONS_REQUEST_DATE"] = $data['requisitions_date'];
        $parser_data["INVENTORY_REQUISITIONS_STATUS"] = $data['requisitions_status'];
        $parser_data["INVENTORY_REQUISITIONS_COMMENT"] = $data['_reason'];

        $parser_data["SIGNATURE"] = $email_template->signature;

        $message = $this->parser->parse_string($email_template->message, $parser_data, true);
        send_app_mail($data['send_to'], $email_template->subject, $message);
    }

    public function stock_arithmetics($id) {

        $list_data = $this->Inventory_requisitions_model->get_all_where(array("id" => $id, "deleted" => 0))->result();

        $current_stock = $this->SAGE_DB()->query("SELECT WHQtyOnHand FROM WhseStk WHERE WHStockLink = {$list_data[0]->item_id}")->result()[0]->WHQtyOnHand;
        $to_deducte = $list_data[0]->item_quantity;

            //if current stock is less what the user requests
        if ($current_stock > $to_deducte) {
                // user will receive all thats available in stock
            //$this->mail_status($id, "You Requested In Amount For {$to_deducte}, But Will Receive An Amount Of {$current_stock} Because We Are Out of Stock");
            //    $this->update_stock($id, 0); // all stock will be depleted thus updated to zero items in stock
            //} else {
                $this->mail_status($id); // user will receive exactly amount requested
                $this->update_stock($id, ($current_stock - $to_deducte)); // stock will be less what the user receives
            }
        }

        public function update_stock($id, $stock) {

            $list_data = $this->Inventory_requisitions_model->get_all_where(array("id" => $id, "deleted" => 0))->result();

        // $this->SAGE_DB()->query("UPDATE StkItem SET Qty_On_Hand = abs((SELECT Qty_On_Hand FROM StkItem WHERE StockLink = {$list_data[0]->item_id}) -  {$list_data[0]->item_quantity}) WHERE StockLink = {$list_data[0]->item_id}");

            $this->SAGE_DB()->query("UPDATE WhseStk SET WHQtyOnHand = $stock WHERE WHStockLink = {$list_data[0]->item_id}");
        }

        function Stocks() {

            $query = $this->SAGE_DB()->query("SELECT StkItem.StockLink, StkItem.Code, StkItem.Description_1, StkItem.Qty_On_Hand, _etblUnits.cUnitCode FROM StkItem LEFT JOIN _etblUnits ON StkItem.iUOMStockingUnitID = _etblUnits.idUnits WHERE StkItem.ServiceItem = 0");


            $data = array();
            foreach ($query->result() as $row) {
                $data[] = array(
                 'StockLink' => $row->StockLink,
                 'StockItem' => $row->Code . " : " . $row->Description_1,
                 'QuantityAvailable' => $row->Qty_On_Hand,
                 'unit_of_measure' => $row->cUnitCode ? $row->cUnitCode : "Unit-Less"
             );
            }
            return json_encode($data);
        }

        function modal_form() {

            $view_data['stocks_dropdown'] = json_decode($this->Stocks());
            $view_data['projects_dropdown'] = $this->db->query("SELECT * FROM sage_projects WHERE deleted = 0")->result();
            $this->load->view('inventory_requisitions/modal_form', $view_data);
        }

        function save() {

            $id = $this->input->post('_id');

            $item_id = $this->input->post('item') ? $this->input->post('item') : $this->Inventory_requisitions_model->get_one($id)->item_id;
            $fields = new stdClass();
            foreach (($this->SAGE_DB()->query("SELECT StockLink, Description_1, AveUCst FROM StkItem WHERE StockLink = " . $item_id)->result()) as $value) {
                $fields = $value;
            }

            $data = array(
                "user_id" => $this->login_user->id,
                "item_id" => $item_id,
                "item_name" => $fields->Description_1,
                 "cost" => $fields->AveUCst * $this->input->post('quantity'),
                "item_quantity" => $this->input->post('quantity'),
                "StkItem_id" => $fields->StockLink,
                "sage_project_id" => $this->input->post('project') ?: 1,
                "description" => $this->input->post('description') ? $this->input->post('description') : $this->Inventory_requisitions_model->get_one($id)->description,
                "created_at" => date('Y-m-d')
            );

            $save_id = $this->Inventory_requisitions_model->save($data, $id);

            if ($save_id) {
                echo json_encode(array("success" => true, 'message' => lang('record_saved')));
            } else {
                echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
            }
        }

        public function SAGE_DB() {
            return $this->load->database('SAGE', TRUE);
        }

        public function fields($object) {

            $return = new stdClass();

            foreach ($object as $value) {
                $return = $value;
            }

            return $return;
        }

    }
