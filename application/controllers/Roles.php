<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once("Pre_loader.php");

class roles extends Pre_loader
{

    function __construct()
    {
        parent::__construct();
       // $this->access_only_admin();
    }

    //load the role view
    function index()
    {
        $this->template->rander("roles/index");
    }

    //load the role add/edit modal
    function modal_form()
    {

        validate_submitted_data(array(
            "id" => "numeric"
        ));

        $view_data['model_info'] = $this->Roles_model->get_one($this->input->post('id'));
        $view_data['roles_dropdown'] = array("" => "-") + $this->Roles_model->get_dropdown_list(array("title"), "id");
        $this->load->view('roles/modal_form', $view_data);
    }

    //get permisissions of a role
    function permissions($role_id)
    {
        if ($role_id) {
            $view_data['model_info'] = $this->Roles_model->get_one($role_id);

            $view_data['members_and_teams_dropdown'] = json_encode(get_team_members_and_teams_select2_data_list());
            $ticket_types_dropdown = array();
            $ticket_types = $this->Ticket_types_model->get_all_where(array("deleted" => 0))->result();
            foreach ($ticket_types as $type) {
                $ticket_types_dropdown[] = array("id" => $type->id, "text" => $type->title);
            }
            $view_data['ticket_types_dropdown'] = json_encode($ticket_types_dropdown);

            $permissions = unserialize($view_data['model_info']->permissions);

            if (!$permissions) {
                $permissions = array();
            }
            $view_data['leave'] = get_array_value($permissions, "leave");
            $view_data['leave_specific'] = get_array_value($permissions, "leave_specific");
            $view_data['attendance_specific'] = get_array_value($permissions, "attendance_specific");
            $view_data['attendance'] = get_array_value($permissions, "attendance");
            $view_data['can_access_invoice'] = get_array_value($permissions, "can_access_invoice");
            $view_data['technical'] = get_array_value($permissions, "technical");
            $view_data['administration'] = get_array_value($permissions, "administration");
            $view_data['estimate'] = get_array_value($permissions, "estimate");
            $view_data['expense'] = get_array_value($permissions, "expense");
            $view_data['client'] = get_array_value($permissions, "client");
            $view_data['can_access_tickets'] = get_array_value($permissions, "can_access_tickets");
            $view_data['announcement'] = get_array_value($permissions, "announcement");
            $view_data['legal'] = get_array_value($permissions, "legal");
            $view_data['can_edit_legal_documents'] = get_array_value($permissions, "can_edit_legal_documents");
            $view_data['can_delete_legal_documents'] = get_array_value($permissions, "can_delete_legal_documents");
            $view_data['can_edit_legal_document_types'] = get_array_value($permissions, "can_edit_legal_document_types");
            $view_data['can_delete_legal_document_types'] = get_array_value($permissions, "can_delete_legal_document_types");
            $view_data['can_edit_legal_document_types'] = get_array_value($permissions, "can_edit_legal_document_types");
            $view_data['can_delete_legal_document_types'] = get_array_value($permissions, "can_delete_legal_document_types");
            $view_data['can_edit_legal_reminders'] = get_array_value($permissions, "can_edit_legal_reminders");
            $view_data['can_delete_legal_reminders'] = get_array_value($permissions, "can_delete_legal_reminders");


            $view_data['can_create_projects'] = get_array_value($permissions, "can_create_projects");
            $view_data['can_edit_projects'] = get_array_value($permissions, "can_edit_projects");
            $view_data['can_delete_projects'] = get_array_value($permissions, "can_delete_projects");
            $view_data['can_edit_hired_assets'] = get_array_value($permissions, "can_edit_hired_assets");
            $view_data['can_delete_hired_assets'] = get_array_value($permissions, "can_delete_hired_assets");

            $view_data['can_access_finance'] = get_array_value($permissions, "can_access_finance");
            $view_data['can_access_expenses'] = get_array_value($permissions, "can_access_expenses");
            $view_data['can_access_payments'] = get_array_value($permissions, "can_access_payments");
            $view_data['can_access_income_expenses'] = get_array_value($permissions, "can_access_income_expenses");

            $view_data['can_access_administration'] = get_array_value($permissions, "can_access_administration");
            $view_data['can_approve_inventory'] = get_array_value($permissions, "can_approve_inventory");
            $view_data['can_disapprove_inventory'] = get_array_value($permissions, "can_disapprove_inventory");
            $view_data['can_edit_inventory'] = get_array_value($permissions, "can_edit_inventory");
            $view_data['can_approve_inventory'] = get_array_value($permissions, "can_approve_inventory");
            $view_data['can_schedule_maintenance'] = get_array_value($permissions, "can_schedule_maintenance");

            $view_data['can_view_recieved_parcels'] = get_array_value($permissions, "can_view_recieved_parcels");
            $view_data['can_view_inwards_parcels'] = get_array_value($permissions, "can_view_inwards_parcels");
            $view_data['can_view_send_parcels'] = get_array_value($permissions, "can_view_send_parcels");
            $view_data['can_view_outwards_parcels'] = get_array_value($permissions, "can_view_outwards_parcels");

            $view_data['can_view_recieved_cheques'] = get_array_value($permissions, "can_view_recieved_cheques");
            $view_data['can_view_inwards_cheques'] = get_array_value($permissions, "can_view_inwards_cheques");
            $view_data['can_view_send_cheques'] = get_array_value($permissions, "can_view_send_cheques");
            $view_data['can_view_outwards_cheques'] = get_array_value($permissions, "can_view_outwards_cheques");

            $view_data['can_receive_parcel'] = get_array_value($permissions, "can_receive_parcel");
            $view_data['can_assign_parcel'] = get_array_value($permissions, "can_assign_parcel");
            $view_data['can_send_parcel'] = get_array_value($permissions, "can_send_parcel");
            $view_data['can_assign_parcel_outwards'] = get_array_value($permissions, "can_assign_parcel_outwards");

            $view_data['can_receive_cheque'] = get_array_value($permissions, "can_receive_cheque");
            $view_data['can_assign_cheque'] = get_array_value($permissions, "can_assign_cheque");
            $view_data['can_send_cheque'] = get_array_value($permissions, "can_send_cheque");
            $view_data['can_assign_cheque_outwards'] = get_array_value($permissions, "can_assign_cheque_outwards");

            $view_data['can_access_technical'] = get_array_value($permissions, "can_access_technical");
            $view_data['can_access_preventive'] = get_array_value($permissions, "can_access_preventive");
            $view_data['can_access_reactive'] = get_array_value($permissions, "can_access_reactive");
            $view_data['can_access_inpections'] = get_array_value($permissions, "can_access_inpections");
            $view_data['can_access_warranty_parts'] = get_array_value($permissions, "can_access_warranty_parts");
            $view_data['can_access_requisitions'] = get_array_value($permissions, "can_access_requisitions");
            $view_data['can_access_fueling'] = get_array_value($permissions, "can_access_fueling");
            $view_data['can_access_hiring_assets'] = get_array_value($permissions, "can_access_hiring_assets");
            $view_data['can_access_trimmer_sheets'] = get_array_value($permissions, "can_access_trimmer_sheets");
            $view_data['maintenance_reports'] = get_array_value($permissions, "maintenance_reports");
            $view_data['can_access_fuel_reports'] = get_array_value($permissions, "can_access_fuel_reports");
            $view_data['can_access_trimmer_sheets'] = get_array_value($permissions, "can_access_trimmer_sheets");
            $view_data['can_edit_trimmer_sheets'] = get_array_value($permissions, "can_edit_trimmer_sheets");
            $view_data['can_delete_trimmer_sheets'] = get_array_value($permissions, "can_delete_trimmer_sheets");
            $view_data['maintenance_reports'] = get_array_value($permissions, "maintenance_reports");
            $view_data['can_access_fuel_reports'] = get_array_value($permissions, "can_access_fuel_reports");
            $view_data['can_edit_fuel'] = get_array_value($permissions, "can_edit_fuel");
            $view_data['can_delete_fuel'] = get_array_value($permissions, "can_delete_fuel");
            $view_data['can_access_technical_settings'] = get_array_value($permissions, "can_access_technical_settings");

            $view_data['can_access_defferals'] = get_array_value($permissions, "can_access_defferals");
            $view_data['can_access_project_defferals'] = get_array_value($permissions, "can_access_project_defferals");
            $view_data['can_access_accounts'] = get_array_value($permissions, "can_access_accounts");

            $view_data['can_access_legal'] = get_array_value($permissions, "can_access_legal");
            $view_data['can_access_documents'] = get_array_value($permissions, "can_access_documents");
            $view_data['can_access_cases'] = get_array_value($permissions, "can_access_cases");
            $view_data['can_access_customers'] = get_array_value($permissions, "can_access_customers");

            $view_data['can_view_checklists'] = get_array_value($permissions, "can_view_checklists");
            $view_data['can_view_support_tickets'] = get_array_value($permissions, "can_view_support_tickets");
            $view_data['can_view_checklists_reports'] = get_array_value($permissions, "can_send_cheque");
            $view_data['can_view_assets'] = get_array_value($permissions, "can_view_assets");
            $view_data['can_view_assets_reports'] = get_array_value($permissions, "can_view_assets_reports");
            $view_data['can_view_assets_maintanance'] = get_array_value($permissions, "can_view_assets_maintanance");
            $view_data['can_view_assets_maintanance_reports'] = get_array_value($permissions, "can_view_assets_maintanance_reports");
            $view_data['can_view_assets_disposals'] = get_array_value($permissions, "can_view_assets_disposals");
            $view_data['can_view_support_reports'] = get_array_value($permissions, "can_view_support_reports");
            $view_data['can_view_third_level_reports'] = get_array_value($permissions, "can_view_third_level_reports");
            $view_data['can_mark_ticket_done'] = get_array_value($permissions, "can_mark_ticket_done");
            $view_data['can_mark_ticket_solved'] = get_array_value($permissions, "can_mark_ticket_solved");
            $view_data['can_mark_ticket_closed'] = get_array_value($permissions, "can_mark_ticket_closed");

            $view_data['can_access_team'] = get_array_value($permissions, "can_access_team");
            $view_data['can_access_team_members'] = get_array_value($permissions, "can_access_team_members");

            $view_data['can_view_knowledgebase'] = get_array_value($permissions, "can_view_knowledgebase");
            $view_data['can_access_knowledgebase'] = get_array_value($permissions, "can_access_knowledgebase");
            $view_data['can_add_knowledgebase'] = get_array_value($permissions, "can_add_knowledgebase");

            $view_data['can_access_timecard'] = get_array_value($permissions, "can_access_timecard");
            $view_data['can_access_attendace'] = get_array_value($permissions, "can_access_attendace");
            $view_data['can_access_task_summary'] = get_array_value($permissions, "can_access_task_summary");
            $view_data['can_access_day_summary'] = get_array_value($permissions, "can_access_day_summary");

            $view_data['can_add_remove_project_members'] = get_array_value($permissions, "can_add_remove_project_members");

            $view_data['can_create_tasks'] = get_array_value($permissions, "can_create_tasks");
            $view_data['can_edit_tasks'] = get_array_value($permissions, "can_edit_tasks");
            $view_data['can_delete_tasks'] = get_array_value($permissions, "can_delete_tasks");
            $view_data['can_comment_on_tasks'] = get_array_value($permissions, "can_comment_on_tasks");

            $view_data['can_access_leads'] = get_array_value($permissions, "can_access_leads");
            $view_data['can_edit_leads'] = get_array_value($permissions, "can_edit_leads");
            $view_data['can_delete_leads'] = get_array_value($permissions, "can_delete_leads");
            $view_data['can_access_messages'] = get_array_value($permissions, "can_access_messages");
            $view_data['can_access_planner'] = get_array_value($permissions, "can_access_planner");
            $view_data['can_access_projects'] = get_array_value($permissions, "can_access_projects");
            $view_data['can_access_tasks'] = get_array_value($permissions, "can_access_tasks");
            $view_data['can_access_outages'] = get_array_value($permissions, "can_access_outages");


            $view_data['can_create_milestones'] = get_array_value($permissions, "can_create_milestones");
            $view_data['can_edit_milestones'] = get_array_value($permissions, "can_edit_milestones");
            $view_data['can_delete_milestones'] = get_array_value($permissions, "can_delete_milestones");

            $view_data['can_delete_files'] = get_array_value($permissions, "can_delete_files");


            $view_data['can_view_team_members_contact_info'] = get_array_value($permissions, "can_view_team_members_contact_info");
            $view_data['can_view_team_members_social_links'] = get_array_value($permissions, "can_view_team_members_social_links");

            $this->load->view("roles/permissions", $view_data);
        }
    }

    //save a role
    function save()
    {
        validate_submitted_data(array(
            "id" => "numeric",
            "title" => "required"
        ));

        $id = $this->input->post('id');
        $copy_settings = $this->input->post('copy_settings');
        $data = array(
            "title" => $this->input->post('title'),
        );

        if ($copy_settings) {
            $role = $this->Roles_model->get_one($copy_settings);
            $data["permissions"] = $role->permissions;
        }

        $save_id = $this->Roles_model->save($data, $id);
        if ($save_id) {
            echo json_encode(array("success" => true, "data" => $this->_row_data($save_id), 'id' => $save_id, 'message' => lang('record_saved')));
        } else {
            echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
    }

    //save permissions of a role
    function save_permissions()
    {
        validate_submitted_data(array(
            "id" => "numeric|required"
        ));

        $id = $this->input->post('id');
        $leave = $this->input->post('leave_permission');
        $leave_specific = "";
        if ($leave === "specific") {
            $leave_specific = $this->input->post('leave_permission_specific');
        }

        $attendance = $this->input->post('attendance_permission');
        $attendance_specific = "";
        if ($attendance === "specific") {
            $attendance_specific = $this->input->post('attendance_permission_specific');
        }

        $can_access_invoice = $this->input->post('can_access_invoice');
        $technical = $this->input->post('technical_permission');
        $estimate = $this->input->post('estimate_permission');
        $expense = $this->input->post('expense_permission');
        $client = $this->input->post('client_permission');
        $can_schedule_maintenance = $this->input->post('can_schedule_maintenance');
        $can_access_tickets = $this->input->post('can_access_tickets');
        $legal = $this->input->post('legal_permission');
        $administration = $this->input->post('administration_permission');
        $can_access_leads = $this->input->post('can_access_leads');
        $can_edit_leads = $this->input->post('can_edit_leads');
        $can_delete_leads = $this->input->post('can_delete_leads');
        $can_access_messages = $this->input->post('can_access_messages');
        $can_access_planner = $this->input->post('can_access_planner');
        $can_access_projects = $this->input->post('can_access_projects');
        $can_access_tasks = $this->input->post('can_access_tasks');
        $can_access_outages = $this->input->post('can_access_outages');
        $can_access_technical_settings = $this->input->post('can_access_technical_settings');

        $can_edit_legal_documents = $this->input->post('can_edit_legal_documents');
        $can_delete_legal_documents = $this->input->post('can_delete_legal_documents');
        $can_edit_legal_document_types = $this->input->post('can_edit_legal_document_types');
        $can_delete_legal_document_types = $this->input->post('can_delete_legal_document_types');
        $can_edit_legal_reminders = $this->input->post('can_edit_legal_reminders');
        $can_delete_legal_reminders = $this->input->post('can_delete_legal_reminders');


        $can_access_finance = $this->input->post('can_access_finance');
        $can_access_expenses = $this->input->post('can_access_expenses');
        $can_access_payments = $this->input->post('can_access_payments');
        $can_access_income_expenses = $this->input->post('can_access_income_expenses');

        $can_create_projects = $this->input->post('can_create_projects');
        $can_edit_projects = $this->input->post('can_edit_projects');
        $can_delete_projects = $this->input->post('can_delete_projects');

        $can_add_remove_project_members = $this->input->post('can_add_remove_project_members');

        $can_create_tasks = $this->input->post('can_create_tasks');
        $can_edit_tasks = $this->input->post('can_edit_tasks');
        $can_delete_tasks = $this->input->post('can_delete_tasks');
        $can_comment_on_tasks = $this->input->post('can_comment_on_tasks');

        $can_access_administration = $this->input->post('can_access_administration');
        $can_approve_inventory = $this->input->post('can_approve_inventory');
        $can_disapprove_inventory = $this->input->post('can_disapprove_inventory');
        $can_edit_inventory = $this->input->post('can_edit_inventory');

        $can_view_recieved_parcels = $this->input->post('can_view_recieved_parcels');
        $can_view_inwards_parcels = $this->input->post('can_view_inwards_parcels');
        $can_view_send_parcels = $this->input->post('can_view_send_parcels');
        $can_view_outwards_parcels = $this->input->post('can_view_send_parcels');

        $can_view_recieved_cheques = $this->input->post('can_view_recieved_cheques');
        $can_view_inwards_cheques = $this->input->post('can_view_inwards_cheques');
        $can_view_send_cheques = $this->input->post('can_view_send_cheques');
        $can_view_outwards_cheques = $this->input->post('can_view_outwards_cheques');
        $can_receive_parcel = $this->input->post('can_receive_parcel');
        $can_assign_parcel = $this->input->post('can_assign_parcel');
        $can_send_parcel = $this->input->post('can_send_parcel');
        $can_assign_parcel_outwards = $this->input->post('can_assign_parcel_outwards');
        $can_receive_cheque = $this->input->post('can_receive_cheque');
        $can_assign_cheque = $this->input->post('can_assign_cheque');
        $can_send_cheque = $this->input->post('can_send_cheque');
        $can_assign_cheque_outwards = $this->input->post('can_assign_cheque_outwards');

        $can_access_technical = $this->input->post('can_access_technical');
        $can_access_preventive = $this->input->post('can_access_preventive');
        $can_access_reactive = $this->input->post('can_access_reactive');
        $can_access_inpections = $this->input->post('can_access_inpections');
        $can_access_warranty_parts = $this->input->post('can_access_warranty_parts');
        $can_access_requisitions = $this->input->post('can_access_requisitions');
        $can_access_fueling = $this->input->post('can_access_fueling');
        $can_access_hiring_assets = $this->input->post('can_access_hiring_assets');
        $can_edit_hired_assets = $this->input->post('can_edit_hired_assets');
        $can_delete_hired_assets = $this->input->post('can_delete_hired_assets');
        $can_access_trimmer_sheets = $this->input->post('can_access_trimmer_sheets');
        $can_edit_trimmer_sheets = $this->input->post('can_edit_trimmer_sheets');
        $can_delete_trimmer_sheets = $this->input->post('can_delete_trimmer_sheets');
        $maintenance_reports = $this->input->post('maintenance_reports');
        $can_access_fuel_reports = $this->input->post('can_access_fuel_reports');
        $can_edit_fuel = $this->input->post('can_edit_fuel');
        $can_delete_fuel = $this->input->post('can_delete_fuel');


        $can_view_checklists = $this->input->post('can_view_checklists');
        $can_view_support_tickets = $this->input->post('can_view_support_tickets');
        $can_view_checklists_reports = $this->input->post('can_view_checklists_reports');
        $can_view_assets = $this->input->post('can_view_assets');
        $can_view_assets_reports = $this->input->post('can_view_assets_reports');
        $can_view_assets_maintanance = $this->input->post('can_view_assets_maintanance');
        $can_view_assets_maintanance_reports = $this->input->post('can_view_assets_maintanance_reports');
        $can_view_assets_disposals = $this->input->post('can_view_assets_disposals');
        $can_view_support_reports = $this->input->post('can_view_support_reports');
        $can_view_third_level_reports = $this->input->post('can_view_third_level_reports');
        $can_mark_ticket_closed = $this->input->post('can_mark_ticket_closed');
        $can_mark_ticket_solved = $this->input->post('can_mark_ticket_solved');
        $can_mark_ticket_done = $this->input->post('can_mark_ticket_done');

        $can_access_defferals = $this->input->post('can_access_defferals');
        $can_access_project_defferals = $this->input->post('can_access_project_defferals');
        $can_access_accounts = $this->input->post('can_access_accounts');

        $can_access_legal = $this->input->post('can_access_legal');
        $can_access_documents = $this->input->post('can_access_documents');
        $can_access_cases = $this->input->post('can_access_cases');
        $can_access_customers = $this->input->post('can_access_customers');

        $can_access_team = $this->input->post('can_access_team');
        $can_access_team_members = $this->input->post('can_access_team_members');

        $can_view_knowledgebase = $this->input->post('can_view_knowledgebase');
        $can_access_knowledgebase = $this->input->post('can_access_knowledgebase');
        $can_add_knowledgebase = $this->input->post('can_add_knowledgebase');

        $can_access_timecard = $this->input->post('can_access_timecard');
        $can_access_attendace = $this->input->post('can_access_attendace');
        $can_access_task_summary = $this->input->post('can_access_task_summary');
        $can_access_day_summary = $this->input->post('can_access_day_summary');

        $can_create_milestones = $this->input->post('can_create_milestones');
        $can_edit_milestones = $this->input->post('can_edit_milestones');
        $can_delete_milestones = $this->input->post('can_delete_milestones');

        $can_delete_files = $this->input->post('can_delete_files');

        $announcement = $this->input->post('announcement_permission');

        $can_view_team_members_contact_info = $this->input->post('can_view_team_members_contact_info');
        $can_view_team_members_social_links = $this->input->post('can_view_team_members_social_links');


        $permissions = array(
            "leave" => $leave,
            "leave_specific" => $leave_specific,
            "attendance" => $attendance,
            "attendance_specific" => $attendance_specific,
            "technical" => $technical,
            "administration" => $administration,
            "estimate" => $estimate,
            "legal" => $legal,
            "expense" => $expense,
            "can_edit_leads" => $can_edit_leads,
            "can_delete_leads" => $can_delete_leads,
            "can_edit_legal_documents" => $can_edit_legal_documents,
            "can_schedule_maintenance" =>$can_schedule_maintenance,
            "can_delete_legal_documents" => $can_delete_legal_documents,
            "can_edit_legal_document_types" => $can_edit_legal_document_types,
            "can_delete_legal_document_types" => $can_delete_legal_document_types,
            "can_edit_legal_reminders" => $can_edit_legal_reminders,
            "can_delete_legal_reminders" => $can_delete_legal_reminders,
            "client" => $client,
            "can_edit_trimmer_sheets" => $can_edit_trimmer_sheets,
            "can_delete_trimmer_sheets" => $can_delete_trimmer_sheets,
            "can_edit_fuel" => $can_edit_fuel,
            "can_delete_fuel" => $can_delete_fuel,
            "can_view_assets_reports" => $can_view_assets_reports,
            "can_access_outages" => $can_access_outages,
            "can_access_administration" => $can_access_administration,
            "can_access_tasks" => $can_access_tasks,
            "can_access_leads" => $can_access_leads,
            "can_access_messages" => $can_access_messages,
            "can_access_planner" => $can_access_planner,
            "can_access_projects" => $can_access_projects,
            "can_access_timecard" => $can_access_timecard,
            "can_access_attendace" => $can_access_attendace,
            "can_access_task_summary" => $can_access_task_summary,
            "can_access_day_summary" => $can_access_day_summary,
            "can_access_tickets" => $can_access_tickets,
            "can_view_knowledgebase" => $can_view_knowledgebase,
            "can_access_knowledgebase" => $can_access_knowledgebase,
            "can_add_knowledgebase" => $can_add_knowledgebase,
            "can_access_team" => $can_access_team,
            "can_access_team_members" => $can_access_team_members,
            "can_access_legal" => $can_access_legal,
            "can_access_documents" => $can_access_documents,
            "can_access_customers" => $can_access_customers,
            "can_access_cases" => $can_access_cases,
            "can_access_defferals" => $can_access_defferals,
            "can_access_project_defferals" => $can_access_project_defferals,
            "can_access_accounts" => $can_access_accounts,
            "can_access_technical" => $can_access_technical,
            "can_access_preventive" => $can_access_preventive,
            "can_access_reactive" => $can_access_reactive,
            "can_access_inpections" => $can_access_inpections,
            "can_access_warranty_parts" => $can_access_warranty_parts,
            "can_access_requisitions" => $can_access_requisitions,
            "can_access_fueling" => $can_access_fueling,
            "can_access_hiring_assets" => $can_access_hiring_assets,
            "can_edit_hired_assets" => $can_edit_hired_assets,
            "can_delete_hired_assets" => $can_delete_hired_assets,
            "can_access_trimmer_sheets" => $can_access_trimmer_sheets,
            "maintenance_reports" => $maintenance_reports,
            "can_access_fuel_reports" => $can_access_fuel_reports,
            "can_access_technical_settings" => $can_access_technical_settings,
            "can_access_invoice" => $can_access_invoice,
            "announcement" => $announcement,
            "can_access_finance" => $can_access_finance,
            "can_access_expenses" => $can_access_expenses,
            "can_access_payments" => $can_access_payments,
            "can_access_income_expenses" => $can_access_income_expenses,
            "can_view_support_reports" => $can_view_support_reports,
            "can_view_third_level_reports" => $can_view_third_level_reports,
            "can_mark_ticket_closed" =>$can_mark_ticket_closed,
            "can_mark_ticket_solved" =>$can_mark_ticket_solved,
            "can_mark_ticket_done" =>$can_mark_ticket_done,
            "can_view_checklists" => $can_view_checklists,
            "can_view_support_tickets" => $can_view_support_tickets,
            "can_view_checklists_reports" => $can_view_checklists_reports,
            "can_view_assets" => $can_view_assets,
            "can_view_assets_maintanance" => $can_view_assets_maintanance,
            "can_view_assets_maintanance_reports" => $can_view_assets_maintanance_reports,
            "can_view_assets_disposals" => $can_view_assets_disposals,
            "can_receive_parcel" => $can_receive_parcel,
            "can_assign_parcel" => $can_assign_parcel,
            "can_send_parcel" => $can_send_parcel,
            "can_assign_parcel_outwards" => $can_assign_parcel_outwards,
            "can_receive_cheque" => $can_receive_cheque,
            "can_assign_cheque" => $can_assign_cheque,
            "can_send_cheque" => $can_send_cheque,
            "can_assign_cheque_outwards" => $can_assign_cheque_outwards,
            "can_view_recieved_parcels" => $can_view_recieved_parcels,
            "can_view_inwards_cheques" => $can_view_inwards_cheques,
            "can_view_send_cheques" => $can_view_send_cheques,
            "can_view_outwards_cheques" => $can_view_outwards_cheques,
            "can_view_recieved_cheques" => $can_view_recieved_cheques,
            "can_view_inwards_parcels" => $can_view_inwards_parcels,
            "can_view_send_parcels" => $can_view_send_parcels,
            "can_view_outwards_parcels" => $can_view_outwards_parcels,
            "can_create_projects" => $can_create_projects,
            "can_edit_projects" => $can_edit_projects,
            "can_delete_projects" => $can_delete_projects,
            "can_add_remove_project_members" => $can_add_remove_project_members,
            "can_approve_inventory" => $can_approve_inventory,
            "can_disapprove_inventory" => $can_disapprove_inventory,
            "can_edit_inventory" => $can_edit_inventory,
            "can_create_tasks" => $can_create_tasks,
            "can_edit_tasks" => $can_edit_tasks,
            "can_delete_tasks" => $can_delete_tasks,
            "can_comment_on_tasks" => $can_comment_on_tasks,
            "can_create_milestones" => $can_create_milestones,
            "can_edit_milestones" => $can_edit_milestones,
            "can_delete_milestones" => $can_delete_milestones,
            "can_delete_files" => $can_delete_files,
            "can_view_team_members_contact_info" => $can_view_team_members_contact_info,
            "can_view_team_members_social_links" => $can_view_team_members_social_links
        );
        $data = array(
            "permissions" => serialize($permissions),
        );

        $save_id = $this->Roles_model->save($data, $id);
        if ($save_id) {
            echo json_encode(array("success" => true, "data" => $this->_row_data($id), 'id' => $save_id, 'message' => lang('record_saved')));
        } else {
            echo json_encode(array("success" => false, 'message' => lang('error_occurred')));
        }
    }

    //delete or undo a role
    function delete()
    {
        validate_submitted_data(array(
            "id" => "numeric|required"
        ));

        $id = $this->input->post('id');
        if ($this->input->post('undo')) {
            if ($this->Roles_model->delete($id, true)) {
                echo json_encode(array("success" => true, "data" => $this->_row_data($id), "message" => lang('record_undone')));
            } else {
                echo json_encode(array("success" => false, lang('error_occurred')));
            }
        } else {
            if ($this->Roles_model->delete($id)) {
                echo json_encode(array("success" => true, 'message' => lang('record_deleted')));
            } else {
                echo json_encode(array("success" => false, 'message' => lang('record_cannot_be_deleted')));
            }
        }
    }

    //get role list data
    function list_data()
    {
        $list_data = $this->Roles_model->get_details()->result();
        $result = array();
        foreach ($list_data as $data) {
            $result[] = $this->_make_row($data);
        }
        echo json_encode(array("data" => $result));
    }

    //get a row of role list
    private function _row_data($id)
    {
        $options = array("id" => $id);
        $data = $this->Roles_model->get_details($options)->row();
        return $this->_make_row($data);
    }

    //make a row of role list table
    private function _make_row($data)
    {
        return array("<a href='#' data-id='$data->id' class='role-row link'>" . $data->title . "</a>",

            $data->id != 1 ? modal_anchor(get_uri("roles/modal_form"), "<i class='fa fa-pencil'></i>", array("class" => "edit", "title" => lang('edit_role'), "data-post-id" => $data->id))
                . js_anchor("<i class='fa fa-times fa-fw'></i>", array('title' => lang('delete_role'), "class" => "delete", "data-id" => $data->id, "data-action-url" => get_uri("roles/delete"), "data-action" => "delete"))
                : ''
        );

    }

}

/* End of file roles.php */
/* Location: ./application/controllers/roles.php */
