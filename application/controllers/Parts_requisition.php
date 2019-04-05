<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require_once("Pre_loader.php");

class Parts_requisition extends Pre_loader
{

    /**
     * Get All Data from this method.
     *
     * @return Response
     */

    public function __construct()
    {
        parent::__construct();

        $this->load->helper(array('form', 'url'));
    }

    public function index()
    {

        $view_data['spares'] = $this->db->query("SELECT spares.*,spares.id as spID,
      assets.code as vehicle,jobs.card_no FROM spares
      LEFT JOIN jobs ON jobs.id=spares.job_card_id 
      LEFT JOIN assets ON assets.id=jobs.vehicle_no")->result_array();

        $this->template->rander('maintenance/reactive/index_requisition', $view_data);
    }

    public function spare($id)
    {
        $spare = $this->db->query("SELECT assets.code as vehicle FROM assets 
    LEFT JOIN  jobs ON jobs.vehicle_no=assets.id WHERE jobs.id=$id")->row()->vehicle;
        echo json_encode($spare);
    }

    public function description($id)
    {
        $description = $this->db->query("SELECT jobs.description FROM jobs 
    LEFT JOIN  external_services ON external_services.job_card_id=jobs.id WHERE jobs.id=$id")->row()->description;
        echo json_encode($description);
    }

    public function displayParts($id)
    {
        $parts = $this->SAGE_DB()->query("SELECT StkItem . StockLink AS Stk_ID , WhseMst . WhseLink AS Whse_ID , StkItem . Code AS Stk_Code , StkItem . Description_1 AS Stk_Name , StkItem . ItemGroup AS Stk_Grp , StkItem . AveUCst AS Avg_Cost , StkItem . Qty_On_Hand , 
WhseMst . Code AS Whse_Code , WhseMst . Name AS Whse_Name , WhseStk . WHQtyOnHand AS Qty_In_Whse , StkItem . iUOMStockingUnitID AS Item_Unit
FROM WhseStk INNER JOIN
WhseMst ON WhseStk . WHWhseID = WhseMst . WhseLink INNER JOIN
StkItem ON WhseStk . WHStockLink = StkItem . StockLink WHERE ( StkItem . ItemActive = 1 ) AND ( StkItem . ServiceItem = 0 ) AND ( StkItem . StockLink = $id) ")->row_array()['Qty_In_Whse'];

        echo json_encode($parts);
    }

    public function createPart()
    {
        $user_id = $this->login_user->id;
        $location = $this->db->query("select * from users where id=$user_id")->row()->location_id;
        $view_data['stocks_dropdown'] = $this->SAGE_DB()->query("SELECT StkItem . StockLink AS Stk_ID , WhseMst . WhseLink AS Whse_ID , StkItem . Code AS Stk_Code , StkItem . Description_1 AS Stk_Name , StkItem . ItemGroup AS Stk_Grp , StkItem . AveUCst AS Avg_Cost , StkItem . Qty_On_Hand , 
WhseMst . Code AS Whse_Code , WhseMst . Name AS Whse_Name , WhseStk . WHQtyOnHand AS Qty_In_Whse , StkItem . iUOMStockingUnitID AS Item_Unit
FROM WhseStk INNER JOIN
WhseMst ON WhseStk . WHWhseID = WhseMst . WhseLink INNER JOIN
StkItem ON WhseStk . WHStockLink = StkItem . StockLink
WHERE ( StkItem . ItemActive = 1 ) AND ( StkItem . ServiceItem = 0 ) AND ( StkItem . Itemgroup = 'SPARES') AND ( WhseMst . Code ='$location')")->result();

        $view_data['jobs_card_dropdown'] = $this->Jobs_model->get_all_where(array("deleted" => 0))->result();
        $view_data['spare_parts_dropdown'] = $this->Equipments_model->get_all_where(array("deleted" => 0))->result();
        $this->template->rander('maintenance/reactive/create_part', $view_data);
    }

    public function show_form($id)
    {
        $view_data['jobs_card_dropdown'] = $this->Jobs_model->get_all_where(array("deleted" => 0))->result();
        $view_data['spare_parts_dropdown'] = $this->Equipments_model->get_all_where(array("deleted" => 0))->result();
        $view_data['services'] = $this->db->query("SELECT spares.*,assets.code,jobs.card_no,
    equipments.description as spare,jobs.description FROM spares
    LEFT JOIN jobs ON jobs.id=spares.job_card_id 
    LEFT JOIN assets ON assets.id=jobs.vehicle_no
    LEFT JOIN equipments ON equipments.id=spares.stock_id
    WHERE spares.id=$id")->result_array();

        $this->template->rander('maintenance/reactive/show_form', $view_data);
    }

    public function save_part()
    {

        $stock_id = $this->input->post('stock_id');
        $qnty_out = $this->input->post('qnty_out');

        $stocks = $this->SAGE_DB()->query("SELECT StkItem . StockLink AS Stk_ID , WhseMst . WhseLink AS Whse_ID , StkItem . Code AS Stk_Code , StkItem . Description_1 AS Stk_Name , StkItem . ItemGroup AS Stk_Grp , StkItem . AveUCst AS Avg_Cost , StkItem . Qty_On_Hand , 
WhseMst . Code AS Whse_Code , WhseMst . Name AS Whse_Name , WhseStk . WHQtyOnHand AS Qty_In_Whse , StkItem . iUOMStockingUnitID AS Item_Unit
FROM WhseStk INNER JOIN
WhseMst ON WhseStk . WHWhseID = WhseMst . WhseLink INNER JOIN
StkItem ON WhseStk . WHStockLink = StkItem . StockLink
WHERE ( StkItem . ItemActive = 1 ) AND ( StkItem . ServiceItem = 0 ) AND ( StkItem . StockLink = $stock_id)")->result_array();

        if (($stocks[0]['Qty_In_Whse']) < 1 || ($qnty_out > $stocks[0]['Qty_In_Whse'])) {
            $this->session->set_flashdata('item', 'sorry quantity in store is less than what you have request');
            return redirect(base_url('parts_requisition'));

        }

        $data = array(
            'job_card_id' => $this->input->post('job_card_id'),
            'qnty_out' => $this->input->post('qnty_out'),
            'stock_id' => $stock_id,
            'description' => 'Req by: ' . $this->login_user->first_name,
            'warehouse_id' => $stocks[0]['Whse_ID'],
            'stock_name' => $stocks[0]['Stk_Name'],
            'code_id' => $stocks[0]['Stk_Code'],
            'uom' => $stocks[0]['Item_Unit'],
            'category_id' => 1,
            'stocking_id' => $stocks[0]['Item_Unit'],
            'avg_cost' => $stocks[0]['Avg_Cost'],
            'qnty_in' => $stocks[0]['Qty_In_Whse'],
        );
        $inserted = $this->db->insert('spares', $data);
        $id = $this->db->insert_id();
        $this->db->where('id', $id);
        $items = $this->db->query("SELECT spares.*,jobs.card_no FROM spares
  LEFT JOIN jobs ON jobs.id=spares.job_card_id WHERE spares.id=$id")->row();
        $total = $items->qnty_out * $items->avg_cost;
        $updated = array('requisition_no' => substr('RQ-0' . $id, 0, 8), 'total' => $total);
        $this->db->update('spares', $updated);
        $batchlines = array(

            'iInvJrBatchID' => 7,
            'iStockID' => $items->stock_id,
            'iWarehouseID' => $items->warehouse_id,
            'cDescription' => 'Req by: ' . $this->login_user->first_name,
            'dTrDate' => date('Y-m-d H:i:s'),
            'iTrCodeID' => 37,
            'iGLContraID' => 86,
            'cReference' => $items->card_no,
            'fQtyIn' => 0,
            'fQtyOut' => $items->qnty_out,
            'fNewCost' => $items->avg_cost,
            'iUnitsOfMeasureStockingID' => $items->stock_id,
            'iUnitsOfMeasureCategoryID' => $items->stock_id,
            'iUnitsOfMeasureID' => $items->stock_id,
        );
        $this->SAGE_DB()->insert('_etblInvJrBatchlines', $batchlines);
        $whse_id = $this->SAGE_DB()->query("SELECT * FROM _etblInvJrBatchlines ORDER BY dTrDate DESC")->row_array()['iWarehouseID'];
        $quantity = $items->qnty_out;
        $this->SAGE_DB()->query("UPDATE  WhseStk SET WHQtyOnHand-=$quantity WHERE IdWhseStk=$whse_id");
        return redirect(base_url('parts_requisition'));
    }

    public function inventory()
    {
        echo "<pre>";
        var_dump($this->SAGE_DB()->query("SELECT * FROM _etblInvJrBatchlines")->result_array());

    }

    public function SAGE_DB()
    {
        return $this->load->database('SAGE', TRUE);
    }

    public function reports()
    {
        $data['parts'] = $this->db->query("SELECT spares.*,jobs.card_no FROM spares
   LEFT JOIN jobs  ON jobs.id = spares.job_card_id")->result();
        $this->template->rander('maintenance/reactive/parts_index', $data);
    }

    public function print_items()
    {

        $data['parts'] = $this->db->query("SELECT spares.*,jobs.card_no FROM spares
   LEFT JOIN jobs  ON jobs.id = spares.job_card_id")->result();
        $this->load->library('pdf2');
        $this->pdf2->load_view('maintenance/reactive/spares_reports', $data);
        $this->pdf2->render();
        $this->pdf2->stream('spareparts.pdf');
    }

    public function extract_items()
    {
        $this->load->library("excel");
        $object = new PHPExcel();

        $object->setActiveSheetIndex(0);

        $table_columns = array("Requisition NO", "Code", "Item Name", "Quantity",'Description','Total Amount','Date');

        $column = 0;

        foreach($table_columns as $field)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
            $column++;
        }

        $employee_data =$this->db->query("SELECT spares.*,jobs.card_no FROM spares
   LEFT JOIN jobs  ON jobs.id = spares.job_card_id")->result();
        $excel_row = 2;

        foreach($employee_data as $row)
        {
            $object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $row->requisition_no);
            $object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->card_no);
            $object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->stock_name);
            $object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->qnty_out);
            $object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $row->description);
            $object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, number_format($row->total,2));
            $object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, date('d-m-Y',strtotime($row->created)));
            $excel_row++;
        }

        $object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel5');
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="Parts Requisitions Data.xls"');
        $object_writer->save('php://output');
    }

}
