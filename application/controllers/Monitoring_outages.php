<?php
defined('BASEPATH') OR exit('No direct script access allowed');
ini_set('max_execution_time', 300); //300 seconds

require_once("Pre_loader.php");

class Monitoring_outages extends Pre_loader
{

    /**
     * Get All Data from this method.
     *
     * @return Response
     */

    public function __construct()
    {
        parent::__construct();


    }

    public function index()
    {

       $this->email();

    }
    public  function email(){
        $view_data['emails'] = $this->Monitoring_outages_model->get_emails();
        $this->template->rander('monitoring/email_index',$view_data);
    }
    public  function internet(){
        $view_data['internets'] = $this->Monitoring_outages_model->get_internets();
        $this->template->rander('monitoring/internet_index',$view_data);
    }
    public  function erp(){
        $view_data['erps'] = $this->Monitoring_outages_model->get_erps();
        $this->template->rander('monitoring/erp_index',$view_data);
    }
    public  function smartship(){
        $view_data['smarts'] = $this->Monitoring_outages_model->get_smartships();
        $this->template->rander('monitoring/smartship_index',$view_data);
    }
    public  function payroll(){
        $view_data['payrolls'] = $this->Monitoring_outages_model->get_payrolls();
        $this->template->rander('monitoring/payroll_index',$view_data);
    }

    public function add_email(){
        $data = array(
            'location' => $this->input->post('location'),
            'start_date' => $this->input->post('start_date'),
            'start_time' => $this->input->post('start_time'),
            'end_date' => $this->input->post('end_date'),
            'end_time' => $this->input->post('end_time'),
            'description' => $this->input->post('description'),
            'type' => 'email',
            );

        $this->Monitoring_outages_model->save($data);
        return redirect(base_url('monitoring_outages/email'));
    }
    public  function view_email($id){
        $view_data['email'] = $this->Monitoring_outages_model->find_email($id);

        $this->template->rander("monitoring/single_email",$view_data);
    }
    public function add_internet(){
        $data = array(
            'location' => $this->input->post('location'),
            'start_date' => $this->input->post('start_date'),
            'start_time' => $this->input->post('start_time'),
            'end_date' => $this->input->post('end_date'),
            'end_time' => $this->input->post('end_time'),
            'description' => $this->input->post('description'),
            'type' => 'internet',
        );

        $this->Monitoring_outages_model->save($data);
        return redirect(base_url('monitoring_outages/internet'));
    }

    public  function view_internet($id){
        $view_data['internet'] = $this->Monitoring_outages_model->find_internet($id);

        $this->template->rander("monitoring/single_internet",$view_data);
    }
    public function add_erp(){
        $data = array(
            'location' => $this->input->post('location'),
            'start_date' => $this->input->post('start_date'),
            'start_time' => $this->input->post('start_time'),
            'end_date' => $this->input->post('end_date'),
            'end_time' => $this->input->post('end_time'),
            'description' => $this->input->post('description'),
            'type' => 'erp',
        );

        $this->Monitoring_outages_model->save($data);
        return redirect(base_url('monitoring_outages/erp'));
    }

    public  function view_erp($id){
        $view_data['erp'] = $this->Monitoring_outages_model->find_erp($id);

        $this->template->rander("monitoring/single_erp",$view_data);
    }

    public function add_payroll(){
        $data = array(
            'location' => $this->input->post('location'),
            'start_date' => $this->input->post('start_date'),
            'start_time' => $this->input->post('start_time'),
            'end_date' => $this->input->post('end_date'),
            'end_time' => $this->input->post('end_time'),
            'description' => $this->input->post('description'),
            'type' => 'payroll',
        );

        $this->Monitoring_outages_model->save($data);
        return redirect(base_url('monitoring_outages/payroll'));
    }
    public  function view_payroll($id){
        $view_data['payroll'] = $this->Monitoring_outages_model->find_payroll($id);

        $this->template->rander("monitoring/single_payroll",$view_data);
    }

    public function add_smartship(){
        $data = array(
            'location' => $this->input->post('location'),
            'start_date' => $this->input->post('start_date'),
            'start_time' => $this->input->post('start_time'),
            'end_date' => $this->input->post('end_date'),
            'end_time' => $this->input->post('end_time'),
            'description' => $this->input->post('description'),
            'type' => 'smartship',
        );

        $this->Monitoring_outages_model->save($data);
        return redirect(base_url('monitoring_outages/smartship'));
    }
    public  function view_smartship($id){
        $view_data['smart'] = $this->Monitoring_outages_model->find_smartship($id);

        $this->template->rander("monitoring/single_smartship",$view_data);
    }
}