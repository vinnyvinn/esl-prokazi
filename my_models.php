<?php die();

/**
 * Add you custom models here that you are loading in your controllers
 *
 * <code>
 * $this->site_model->get_records()
 * </code>
 * Where site_model is the model Class
 *
 * ---------------------- Models to Load ----------------------
 * <examples>
 *
 * @property Announcements_model $Announcements_model
 * @property Crud_model       $Crud_model
 * @property Settings_model   $Settings_model
 * @property Users_model      $Users_model
 * @property Team_model       $Team_model
 * @property Attendance_model  $Attendance_model
 * @property Leave_types_model   $Leave_types_model
 * @property Leave_applications_model     $Leave_applications_model
 * @property Events_model   $Events_model
 * @property Messages_model   $Messages_model
 * @property Clients_model       $Clients_model
 * @property Projects_model      $Projects_model
 *@property Escalation_matrix_model Escalation_matrix_model
 * @property Milestones_model       $Milestones_model
 * @property Tasks_model   $Tasks_model
 * @property Project_comments_model      $Project_comments_model
 * @property Activity_logs_model       $Activity_logs_model
 * @property Project_files_model  $Project_files_model
 * @property Notes_model   $Notes_model
 * @property Project_members_model     $Project_members_model
 * @property Ticket_types_model   $Ticket_types_model
 * @property Tickets_model   $Tickets_model
 * @property Ticket_comments_model       $Ticket_comments_model
 *  @property Invoices_model $Invoices_model
 * @property Invoice_items_model       $Invoice_items_model
 * @property Invoice_payments_model   $Invoice_payments_model
 * @property Payment_methods_model      $Payment_methods_model
 * @property Email_templates_model       $Email_templates_model
 * @property Roles_model  $Roles_model
 * @property Posts_model   $Posts_model
 * @property Timesheets_model     $Timesheets_model
 * @property Expenses_model   $Expenses_model
 * @property Expense_categories_model   $Expense_categories_model
 * @property Taxes_model       $Taxes_model
 * @property Social_links_model      $Social_links_model
 *@property Notification_settings_model $Notification_settings_model
 * @property Notifications_model       $Notifications_model
 * @property Custom_fields_model   $Custom_fields_model
 * @property Estimate_forms_model      $Estimate_forms_model
 * @property Estimate_requests_model       $Estimate_requests_model
 * @property Custom_field_values_model  $Custom_field_values_model
 * @property Estimates_model   $Estimates_model
 * @property Estimate_items_model     $Estimate_items_model
 * @property MainTask   $MainTask
 * @property Inventory_requisitions_model   $Inventory_requisitions_model
 * @property Petty_cash_model       $Petty_cash_model
 *
 * @property Petty_cash_type_model $Petty_cash_type_model
 * @property Team_member_model       $Team_member_model
 * @property LegalDocumentsModel   $LegalDocumentsModel
 * @property LegalDocumentTypesModel      $LegalDocumentTypesModel
 * @property LegalProceduresModel       $LegalProceduresModel
 * @property LegalTypesModel  $LegalTypesModel
 * @property Send_mail_model   $Send_mail_model
 * @property TimeDurationModel     $TimeDurationModell
 * @property TblLegalEscalationMatrix   $TblLegalEscalationMatrix
 * @property LegalReminders   $LegalReminders
 * @property LegalCaseTypesModel       $LegalCaseTypesModel
 *  @property LegalCasesModel $LegalCasesModel
 * @property LegalCasesProceduresModel       $LegalCasesProceduresModel
 * @property SendLegalMails   $SendLegalMails
 * @property Knowledge_base_types_model      $Knowledge_base_types_model
 * @property Knowledge_base_model       $Knowledge_base_model
 * @property Knowledge_base_ticket_model  $Knowledge_base_ticket_model
 * @property TblKnowledgeBaseModel   $TblKnowledgeBaseModel
 * @property TblKnowledgeBaseTypesModel     $TblKnowledgeBaseTypesModel
 * @property Administration_model   $Administration_model
 * @property TblCustSuppCheckItemsModel   $TblCustSuppCheckItemsModel
 * @property TblCustSuppSpecificChecksModel       $TblCustSuppSpecificChecksModel
 * @property TblCustSuppChecksModel      $STblCustSuppChecksModel
 *@property TblChecklists            $TblChecklists
 * @property TblChecklistStatus       $TblChecklistStatus
 * @property TblChecklistTypes   $TblChecklistTypes
 * @property TblChecklistPerformedOn      $TblChecklistPerformedOn
 * @property TblChecklistsTasks       $TblChecklistsTasks
 * @property TblChecklistsTasksChecks  $TblChecklistsTasksChecks
 * @property Third_partyusers_model   $Third_partyusers_modell
 * @property Objective_types_model     $Objective_types_model
 * @property Business_types_model   $Business_types_model
 * @property Events_comments_model   $Events_comments_modelel
 * @property Event_notes_model       $Event_notes_model
 *
 * @property TblLegalDocsItems $TblLegalDocsItems
 * @property Job_services_model       $Job_services_model
 * @property Job_types_model   $Job_types_model
 * @property Job_tasks_model      $Job_tasks_model
 * @property Inspections_model       $Inspections_model
 * @property Vehicles_model  $Vehicles_model
 * @property Jobs_status_model   $Jobs_status_model
 * @property Service_types_model     $Service_types_model
 * @property Assets_model   $Assets_model
 * @property Employees_model   $Employees_model
 * @property Spare_model       $Spare_model
 *  @property Equipments_model $Equipments_model
 * @property Parts_suppliers_model       $Parts_suppliers_model
 * @property External_service_model   $External_service_model
 * @property Extended_service_model      $Extended_service_model
 * @property Rates_model       $Rates_model
 * @property Warranty_model  $Warranty_model
 * @property Service_providers_model   $Service_providers_model
 * @property Fuel_suppliers_model     $Fuel_suppliers_model
 * @property Fuel_model   $Fuel_model
 * @property Sage_clients_model   $Sage_clients_model
 * @property Hire_assets_model       $Hire_assets_model
 * @property Other_expenses_model      $Other_expenses_model
 *@property System_support_model            $System_support_model
 * @property Fuel_balances_model       $Fuel_balances_model
 * @property Mailing_list_model   $Mailing_list_model
 * @property Mailing_activity_model      $Mailing_activity_model
 * @property Mailing_parcel_model       $Mailing_parcel_model
 * @property Fuel_price_model  $Fuel_price_model
 * @property Cheques_model   $Cheques_model
 * @property Preventive_maintainance_model     $Preventive_maintainance_model
 * @property Trimmers_model   $Trimmers_model
 * @property Ict_issets_model   $Ict_issets_model
 * @property Followups_model       $Followups_model
 *
 * @property Ict_asset_history_model $Ict_asset_history_model
 * @property Defferal_model       $Defferal_model
 * @property Gl_model   $Gl_model
 * @property Sage_projects_model      $Sage_projects_model
 * @property Support_entries_model       $Support_entries_model
 * @property Support_comments_model  $Support_comments_model
 * @property Outages_model   $Outages_model
 * @property Assets_inventory_model     $Assets_inventory_model
 * @property Mailing_parcel_outwards_model   $Mailing_parcel_outwards_model
 * @property Parcel_details_model   $Parcel_details_model
 * @property Dispatch_parcel_model       $Dispatch_parcel_model
 *  @property Global_planner_model $Global_planner_model
 * @property Monitoring_outages_model $Monitoring_outages_model
 *


 *
 *
 */
class my_models
{
}

// End my_models.php
