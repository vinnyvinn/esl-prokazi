<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require_once("Pre_loader.php");

class Maintenance_report extends Pre_loader
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
        $this->load->library('excel');


    }

    public function index()
    {

        $view_data['preventives'] = $this->db->query("SELECT * FROM jobs")->result_array();
        $this->template->rander("maintenance/reports/index", $view_data);
    }

    public function preventive()
    {
        $view_data['preventives'] = $this->db->query("SELECT * FROM jobs WHERE reactive=0")->result_array();
        $this->template->rander("maintenance/reports/selected_p", $view_data);
    }

    public function reactive()
    {
        $view_data['reactives'] = $this->db->query("SELECT * FROM jobs WHERE reactive=1")->result_array();
        $this->template->rander("maintenance/reports/selected_r", $view_data);
    }

    public function makeFilter($data, $value)
    {

        $results = array_filter($data, function ($result) use ($data, $value) {

            if ($data['month'] != null && $data['month'] == $value) {

                return $data;
            }
            return false;
        });

        return $results;

    }

    public function view_p($month)
    {
        $this->session->set_userdata('month', $month);
        $this->session->set_userdata('preventive', 'p');
        $query = $this->db->query("SELECT * FROM jobs WHERE reactive=0")->result_array();
        $date = [];
        foreach ($query as $key => $value) {
            $conv = strtotime($value['created_at']);
            $d = date("m", $conv);
            array_push($date, array('month' => $d, 'reports' => $value));
        }
        $search_results = [];
        foreach ($date as $value) {

            $found = $this->makeFilter($value, $month);
            if (!empty($found)) {
                array_push($search_results, $found);
            }
        }

        $view_data['reports_data'] = $search_results;
        $this->template->rander('maintenance/reports/single', $view_data);

    }

    public function view_r($month)
    {
        $this->session->set_userdata('month', $month);
        $this->session->set_userdata('reactive', 'r');
        $query = $this->db->query("SELECT * FROM jobs WHERE reactive=1")->result_array();
        $date = [];
        foreach ($query as $key => $value) {
            $conv = strtotime($value['created_at']);
            $d = date("m", $conv);
            array_push($date, array('month' => $d, 'reports' => $value));
        }
        $search_results = [];
        foreach ($date as $value) {

            $found = $this->makeFilter($value, $month);
            if (!empty($found)) {
                array_push($search_results, $found);
            }
        }

        $view_data['reports_data'] = $search_results;
        $this->template->rander('maintenance/reports/single', $view_data);

    }

    public function print_page_p($month)
    {
        $query = $this->db->query("SELECT * FROM jobs WHERE reactive=0")->result_array();
        $date = [];
        foreach ($query as $key => $value) {
            $conv = strtotime($value['created_at']);
            $d = date("m", $conv);
            array_push($date, array('month' => $d, 'reports' => $value));
        }
        $search_results = [];
        foreach ($date as $value) {

            $found = $this->makeFilter($value, $month);
            if (!empty($found)) {
                array_push($search_results, $found);
            }
        }
        if (empty($search_results)) {
            $this->session->set_flashdata('item', 'sorry, no record was found for the selected Month');

            return redirect('maintenance_report', 'refresh');
        }
        $view_data['reports_data'] = $search_results;
        $this->load->library('pdf2');
        $this->pdf2->load_view('maintenance/reports/print_page_p', $view_data);
        $this->pdf2->render();
        $this->pdf2->stream('maintenance_reports.pdf');
    }

    public function print_page_r($month)
    {
        $query = $this->db->query("SELECT * FROM jobs WHERE reactive=1")->result_array();
        $date = [];
        foreach ($query as $key => $value) {
            $conv = strtotime($value['created_at']);
            $d = date("m", $conv);
            array_push($date, array('month' => $d, 'reports' => $value));
        }
        $search_results = [];
        foreach ($date as $value) {

            $found = $this->makeFilter($value, $month);
            if (!empty($found)) {
                array_push($search_results, $found);
            }
        }
        if (empty($search_results)) {
            $this->session->set_flashdata('item', 'sorry, no record was found for the selected Month');

            return redirect('maintenance_report', 'refresh');
        }
        $view_data['reports_data'] = $search_results;
        $this->load->library('pdf2');
        $this->pdf2->load_view('maintenance/reports/print_page_r', $view_data);
        $this->pdf2->render();
        $this->pdf2->stream('maintenance_reports.pdf');
    }

    public function jobcard_range()
    {
        $this->template->rander('maintenance/preventive/jobcard_range_form');
    }

    public function jobcard_reports()
    {

        $view_data['dates'] = array('from' => $this->input->post('start_date'), 'to' => $this->input->post('end_date'));
        $view_data['job_cards'] = $this->db->query("SELECT * FROM jobs
        WHERE reactive =0 AND (created_at BETWEEN '{$this->input->post('start_date')}' AND '{$this->input->post('end_date')}')")->result();

        $this->template->rander('maintenance/preventive/preventive_index', $view_data);
    }

    public function print_report_p($start_date, $end_date)
    {

        $view_data['job_cards'] =$this->db->query("SELECT * FROM jobs
        WHERE reactive =0 AND (created_at BETWEEN '{$start_date}' AND '{$end_date}')")->result();

        $this->load->library('pdf2');
        $this->pdf2->load_view('maintenance/preventive/print_pre_form', $view_data);
        $this->pdf2->render();
        $this->pdf2->stream('preventive.pdf');

    }

    public function jobcard_range_r()
    {
        $this->template->rander('maintenance/preventive/jobcard_range_form_r');
    }

    public function jobcard_reports_r()
    {

        $view_data['dates'] = array('from' => $this->input->post('start_date'), 'to' => $this->input->post('end_date'));
        $view_data['job_cards'] = $this->db->query("SELECT * FROM jobs
        WHERE reactive =1 AND (created_at BETWEEN '{$this->input->post('start_date')}' AND '{$this->input->post('end_date')}')")->result();

        $this->template->rander('maintenance/reactive/reactive_index', $view_data);
    }

    public function print_report_r($start_date, $end_date)
    {

        $view_data['job_cards'] =$this->db->query("SELECT * FROM jobs
        WHERE reactive =1 AND (created_at BETWEEN '{$start_date}' AND '{$end_date}')")->result();

        $this->load->library('pdf2');
        $this->pdf2->load_view('maintenance/reactive/print_job_r', $view_data);
        $this->pdf2->render();
        $this->pdf2->stream('reactive.pdf');

    }

}
