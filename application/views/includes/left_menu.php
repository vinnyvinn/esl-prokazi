<div id="sidebar" class="box-content ani-width">
    <div id="sidebar-scroll">
        <ul class="" id="sidebar-menu">
            <?php
                             
            if ($this->login_user->user_type == "staff") {

                $sidebar_menu = array(
                    array("name" => "dashboard", "url" => "dashboard", "class" => "fa-desktop")
                );

                $permissions = $this->login_user->permissions;

                $access_expense = get_array_value($permissions, "expense");
                $access_invoice = get_array_value($permissions, "invoice");

                $access_technical = get_array_value($permissions, "technical");

                $access_ticket = get_array_value($permissions, "ticket");
                $access_client = get_array_value($permissions, "client");
                $access_timecard = get_array_value($permissions, "attendance");
                $access_leave = get_array_value($permissions, "leave");
                $access_estimate = get_array_value($permissions, "estimate");
                $access_finance = get_array_value($permissions, "finance");
                $access_administrator = get_array_value($permissions, "administration");
                $access_legal = get_array_value($permissions, "legal");
                $access_received_parcels = (get_array_value($this->login_user->permissions, "can_view_recieved_parcels") == "1");

                if (get_setting("module_timeline") == "1") {
                    $sidebar_menu[] = array("name" => "timeline", "url" => "timeline", "class" => " fa-comments font-18");
                }

                if (get_setting("module_event") == "1") {
                    $sidebar_menu[] = array("name" => "Planner", "url" => "events", "class" => "fa-calendar");
                }

                if (get_setting("module_note") == "1") {
                    $sidebar_menu[] = array("name" => "notes", "url" => "notes", "class" => "fa-book font-16");
                }

                 if (get_array_value($this->login_user->permissions,"can_access_messages") ==1 || get_array_value($this->login_user->user_permissions,"can_access_messages") ==1) {
                    $sidebar_menu[] = array("name" => "messages", "url" => "messages", "class" => "fa-envelope", "devider" => true, "badge" => count_unread_message(), "badge_class" => "badge-secondary");
                }


//                if (get_array_value($this->login_user->permissions,"can_access_leads") ==1 || get_array_value($this->login_user->user_permissions,"can_access_leads") ==1) {
//
//                        $sidebar_menu[] = array("name" => "Leads", "url" => "clients", "class" => "fa-briefcase");
//
//                }

                /*$openProjects = [];
                $openProjects [] = ["name" => "All Projects", "url" => "projects/all_projects"];

                foreach ($projects as $project) {
                    $openProjects[] = ['name' => $project->title, 'url' => 'projects/view/' . $project->id];
                }
                $sidebar_menu[] = array("name" => "projects", "url" => "projects", "class" => "fa-th-large", "submenu" => $openProjects);*/
                if(get_array_value($this->login_user->permissions,"can_access_projects") ==1 || get_array_value($this->login_user->user_permissions,"can_access_projects") ==1){
                $sidebar_menu[] = ["name" => "All Projects", "class" => "fa-th-large", "url" => "projects/all_projects"];
                   }
                   if(get_array_value($this->login_user->permissions,"can_access_tasks") ==1 || get_array_value($this->login_user->user_permissions,"can_access_tasks") ==1){
                $sidebar_menu[] = array("name" => "Your Tasks", "url" => "projects/all_tasks", "class" => "fa-check", "decider" => true);
                  }
                if (($this->login_user->user_type == "staff")) {
                    $checklistsSubs = [];
                    if (get_array_value($this->login_user->permissions,"can_view_checklists") ==1 || get_array_value($this->login_user->user_permissions,"can_view_checklists") ==1) {
                        $checklistsSubs [] = ["name" => "Checklists", "url" => "checklists"];
                        $checklistsSubs [] = ["name" => "Checklists Types", "url" => "checklists/index_types"];
                    }
                    if (get_array_value($this->login_user->permissions,"can_view_support_reports") ==1 || get_array_value($this->login_user->user_permissions,"can_view_support_reports") ==1){
                        $checklistsSubs [] = ["name" => "Support Reports", "url" => "ict_reports/support_entries_index"];
                    }
                     if (get_array_value($this->login_user->permissions,"can_view_support_tickets") ==1 || get_array_value($this->login_user->user_permissions,"can_view_support_tickets") ==1){
                    $checklistsSubs [] = ["name" => "Support Tickets", "url" => "ict_reports/support_tickets"];
                   }
                    if (get_array_value($this->login_user->permissions,"can_view_checklists_reports") ==1 || get_array_value($this->login_user->user_permissions,"can_view_checklists_reports") ==1){
                        $checklistsSubs [] = ["name" => "Checklists Reports", "url" => "checklists/reports"];
                    }
                   
                    if (get_array_value($this->login_user->permissions,"can_view_third_level_reports") ==1 || get_array_value($this->login_user->user_permissions,"can_view_third_level_reports") ==1){
                        $checklistsSubs [] = ["name" => "Third Level Support Reports", "url" => "ict_reports/third_parties"];
                    }
                    if (get_array_value($this->login_user->permissions,"can_view_assets") ==1 || get_array_value($this->login_user->user_permissions,"can_view_assets") ==1){
                    $checklistsSubs [] = ["name" => "Assets", "url" => "inventory_assets"];
                    }
                    if (get_array_value($this->login_user->permissions,"can_view_assets_reports") ==1 || get_array_value($this->login_user->user_permissions,"can_view_assets_reports") ==1){
                        $checklistsSubs [] = ["name" => "Assets Reports", "url" => "inventory_assets/reports"];
                    }
                     if (get_array_value($this->login_user->permissions,"can_view_assets_maintanance") ==1 || get_array_value($this->login_user->user_permissions,"can_view_assets_maintanance") ==1){
                    $checklistsSubs [] = ["name" => "Assets Maintenance", "url" => "ict_reports/inventory_maintenance"];
                   }
                    if (get_array_value($this->login_user->permissions,"can_view_assets_maintanance_reports") ==1 || get_array_value($this->login_user->user_permissions,"can_view_assets_maintanance_reports") ==1){
                        $checklistsSubs [] = ["name" => "Assets Maintenance Reports", "url" => "ict_reports/inventory_list"];
                    }
                    if (get_array_value($this->login_user->permissions,"can_view_assets_disposals") ==1 || get_array_value($this->login_user->user_permissions,"can_view_assets_disposals") ==1){
                        $checklistsSubs [] = ["name" => "Assets Disposal", "url" => "inventory_assets/asset_disposal_list"];
                    }


                    $sidebar_menu[] = array("name" => "ICT", "url" => "checklists", "class" => "fa-road", "submenu" => $checklistsSubs,"devider" => true);
                }

               

                if (get_array_value($this->login_user->permissions,"can_access_invoice")==1 || get_array_value($this->login_user->user_permissions,"can_access_invoice")==1){
                    $sidebar_menu[] = array("name" => "invoices", "url" => "invoices", "class" => "fa-file-text");
                }
                             
                    
                                         

                    $attendanceSubs = [];
                     if(get_array_value($this->login_user->permissions, "can_access_payments") == 1 || get_array_value($this->login_user->user_permissions, "can_access_payments") == 1){
                    $attendanceSubs [] = ["name" => "invoice_payments", "url" => "invoice_payments"];
                      }
                   if(get_array_value($this->login_user->permissions, "can_access_expenses") == "1" || get_array_value($this->login_user->user_permissions, "can_access_expenses") == "1"){
                    $attendanceSubs [] = ["name" => "expenses", "url" => "expenses"];
                   }
                     if(get_array_value($this->login_user->permissions, "can_access_income_expenses") == "1" || get_array_value($this->login_user->user_permissions, "can_access_income_expenses") == "1"){
                    $attendanceSubs [] = ["name" => "income_vs_expenses", "url" => "expenses/income_vs_expenses_chart"];
                }
//
//              if(get_array_value($this->login_user->permissions, "can_access_finance") == "1" || get_array_value($this->login_user->user_permissions, "can_access_finance") == "1"){
//                    $sidebar_menu[] = array("name" => "Finance", "url" => "expenses", "class" => "fa-money", "submenu" => $attendanceSubs);
//                }
//
                
            

                if ($this->login_user->user_type == "staff") {

                    $attendanceSubs = [];
                    $attendanceSubs [] = ["name" => "Inventory / Requisitions", "url" => "inventory_requisitions"];
                    if(get_array_value($this->login_user->permissions, "can_view_recieved_parcels") == "1" || get_array_value($this->login_user->user_permissions, "can_view_recieved_parcels") == "1"){
                    $attendanceSubs [] = ["name" => "Receive Mails & Parcels", "url" => "parcels/items"];
                }
                    if(get_array_value($this->login_user->permissions, "can_view_inwards_parcels") == "1" || get_array_value($this->login_user->user_permissions, "can_view_inwards_parcels") == "1"){
                    $attendanceSubs [] = ["name" => "Mails & Parcels : Inwards", "url" => "parcels/inwards"];
                }
                if(get_array_value($this->login_user->permissions, "can_view_send_parcels") == "1" || get_array_value($this->login_user->user_permissions, "can_view_send_parcels") == "1"){
                    $attendanceSubs [] = ["name" => "Send Mails & Parcels", "url" => "parcels/dispatch_items"];
                }
                if(get_array_value($this->login_user->permissions, "can_view_outwards_parcels") == "1" || get_array_value($this->login_user->user_permissions, "can_view_outwards_parcels") == "1"){
                    $attendanceSubs [] = ["name" => "Mails & Parcels : Outwards", "url" => "parcels/outwards"];
                }
                if(get_array_value($this->login_user->permissions, "can_view_recieved_cheques") == "1" || get_array_value($this->login_user->user_permissions, "can_view_recieved_cheques") == "1"){
                    $attendanceSubs [] = ["name" => "Receive Cheques : Inwards", "url" => "parcels/cheque_inwards"];
                }
                if(get_array_value($this->login_user->permissions, "can_view_inwards_cheques") == "1" || get_array_value($this->login_user->user_permissions, "can_view_inwards_cheques") == "1"){
                    $attendanceSubs [] = ["name" => "Cheques : Inwards", "url" => "cheques/inwards"];
                }
                if(get_array_value($this->login_user->permissions, "can_view_send_cheques") == "1" || get_array_value($this->login_user->user_permissions, "can_view_send_cheques") == "1"){
                    $attendanceSubs [] = ["name" => "Dispatch Cheques : Outwards", "url" => "parcels/cheque_outwards"];
                }
                if(get_array_value($this->login_user->permissions, "can_view_outwards_cheques") == "1" || get_array_value($this->login_user->user_permissions, "can_view_outwards_cheques") == "1"){
                    $attendanceSubs [] = ["name" => "Cheques : Outwards", "url" => "cheques/outwards"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_administration") ==1 || get_array_value($this->login_user->user_permissions,"can_access_administration") ==1){
                    $sidebar_menu[] = array("name" => "Administration", "url" => "inventory_requisitions", "class" => "fa-ils", "submenu" => $attendanceSubs);
                }
                }
//                if ($this->login_user->user_type == "staff") {
//
//                    $attendanceSubs = [];
//                    $attendanceSubs [] = ["name" => "Calendar", "url" => "global_planner"];
//
//                    $sidebar_menu[] = array("name" => "Calendar", "url" => "global_planner", "class" => "fa-calendar", "submenu" => $attendanceSubs);
//                }

                 

                    $attendanceSubs = [];
                    if(get_array_value($this->login_user->permissions,"can_access_attendace") ==1 || get_array_value($this->login_user->user_permissions,"can_access_attendace") ==1){
                    $attendanceSubs [] = ["name" => "Attendance", "url" => "attendance"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_task_summary") ==1 || get_array_value($this->login_user->user_permissions,"can_access_task_summary") ==1){
                    $attendanceSubs [] = ["name" => "Task Summary", "url" => "attendance/task_summary"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_day_summary") ==1 || get_array_value($this->login_user->user_permissions,"can_access_day_summary") ==1){
                    $attendanceSubs [] = ["name" => "Day Summary", "url" => "attendance/days_summary"];
                }
                    if (get_array_value($this->login_user->permissions,"can_access_timecard") ==1 || get_array_value($this->login_user->user_permissions,"can_access_timecard") ==1) {
                    $sidebar_menu[] = array("name" => "attendance", "url" => "attendance", "class" => "fa-clock-o font-16", "submenu" => $attendanceSubs);
                }

             
                if (get_setting("module_escalation_matrix") == "1" && ($this->login_user->is_admin)) {
                    $sidebar_menu[] = array("name" => "Escalation Matrix", "url" => "escalation_matrix", "class" => "fa-stack-overflow");
                }

//                if (get_array_value($this->login_user->permissions,"can_access_tickets") ==1 || get_array_value($this->login_user->user_permissions,"can_access_tickets") ==1)  {
//
//
//                    $ticket_badge = 0;
//                    if ($this->login_user->is_admin && $this->login_user->role_id == 2) {
//                        $ticket_badge = count_new_tickets(NULL, NULL);
//                    } elseif (!$this->login_user->is_admin && $this->login_user->role_id == 2) {
//                        $ticket_badge = count_new_tickets(NULL, $this->login_user->id);
//                    }
//                    // die();
//
//                    $sidebar_menu[] = array("name" => "tickets", "url" => "tickets", "class" => "fa-life-ring", "devider" => true, "badge" => $ticket_badge, "badge_class" => "badge-secondary");
//                }
                $knowledgebase = [];
                if(get_array_value($this->login_user->permissions,"can_access_knowledgebase") ==1 || get_array_value($this->login_user->user_permissions,"can_access_knowledgebase") ==1){
                $knowledgebase [] = ["name" => "Knowledgebase", "url" => "knowledge_base"];
            }
                if (get_array_value($this->login_user->permissions,"can_add_knowledgebase") ==1 || get_array_value($this->login_user->user_permissions,"can_add_knowledgebase") ==1) {
                    $knowledgebase [] = ["name" => "Add Knowledge", "url" => "knowledge_base/indexi"];
                }
                $knowledgebase [] = ["name" => "Knowledgebase Report", "url" => "knowledge_base/reports"];
                if(get_array_value($this->login_user->permissions,"can_view_knowledgebase") ==1 || get_array_value($this->login_user->user_permissions,"can_view_knowledgebase") ==1){
                $sidebar_menu[] = array("name" => "knowledgebase", "url" => "knowledge_base", "class" => "fa-road font-16", "submenu" => $knowledgebase);

                 }
                
                    $attendanceSubs = [];
                    if(get_array_value($this->login_user->permissions,"can_access_team_members") || get_array_value($this->login_user->user_permissions,"can_access_team_members")==1){
                    $attendanceSubs [] = ["name" => "Team Members", "url" => "team_members"];
                  }
                    // $attendanceSubs [] = ["name" => "Task Summary", "url" => "attendance/task_summary"];
                    if (get_array_value($this->login_user->permissions,"can_access_team") ==1 || get_array_value($this->login_user->user_permissions,"can_access_team") ==1) {
                    $sidebar_menu[] = array("name" => "Team", "url" => "team_members", "class" => "fa-user font-16", "submenu" => $attendanceSubs);

                 }

               
                    $attendanceSubs = [];
                    if(get_array_value($this->login_user->permissions,"can_access_attendace") ==1 || get_array_value($this->login_user->user_permissions,"can_access_attendace") ==1){
                    $attendanceSubs [] = ["name" => "Attendance", "url" => "attendance"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_task_summary") ==1 || get_array_value($this->login_user->user_permissions,"can_access_task_summary") ==1){
                    $attendanceSubs [] = ["name" => "Task Summary", "url" => "attendance/task_summary"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_day_summary") ==1 || get_array_value($this->login_user->user_permissions,"can_access_day_summary") ==1){
                    $attendanceSubs [] = ["name" => "Day Summary", "url" => "attendance/days_summary"];
                }
                 if (get_array_value($this->login_user->permissions,"can_access_timecard") ==1 || get_array_value($this->login_user->user_permissions,"can_access_timecard") ==1) {
                    $sidebar_menu[] = array("name" => "attendance", "url" => "attendance", "class" => "fa-clock-o font-16", "submenu" => $attendanceSubs);
                
                       }
                if (get_setting("module_leave") == "1" && ($this->login_user->is_admin || $access_leave)) {
                    $sidebar_menu[] = array("name" => "leaves", "url" => "leaves", "class" => "fa-sign-out font-16", "devider" => true);
                } else if (get_setting("module_leave") == "1") {
                    $sidebar_menu[] = array("name" => "leaves", "url" => "leaves/leave_info", "class" => "fa-sign-out font-16", "devider" => true);
                }

                if (get_setting("module_announcement") == "1") {
                    $sidebar_menu[] = array("name" => "announcements", "url" => "announcements", "class" => "fa-bullhorn");
                }

                if (get_setting("module_sage") == "1") {
                    $sidebar_menu[] = array("name" => "Sage", "url" => "sage", "class" => "fa-cloud");
                }

  
                    $attendanceSubs = [];
                    if(get_array_value($this->login_user->permissions,"can_access_project_defferals") ==1 || get_array_value($this->login_user->user_permissions,"can_access_project_defferals") ==1){
                    $attendanceSubs [] = ["name" => "Project Defferals", "url" => "project_defferal"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_accounts") ==1 || get_array_value($this->login_user->user_permissions,"can_access_accounts") ==1){
                    $attendanceSubs [] = ["name" => "Accounts Transactions", "url" => "gl_process"];
                }
                    if (get_array_value($this->login_user->permissions,"can_access_defferals") ==1 || get_array_value($this->login_user->user_permissions,"can_access_defferals") ==1) {
                    $sidebar_menu[] = array("name" => "Defferals", "url" => "project_defferal", "class" => " fa-credit-card-alt font-16", "submenu" => $attendanceSubs);
               
                  }
                if(get_array_value($this->login_user->permissions,"can_access_outages") ==1 || get_array_value($this->login_user->user_permissions,"can_access_outages") ==1){
                    $sidebar_menu[] = array("name" => "Monitoring Outages", "url" => "monitoring_outages", "class" => "fa-monitor", "decider" => true);
                }

                  $attendanceSubs = [];
                 if(get_array_value($this->login_user->permissions,"can_access_preventive") ==1 || get_array_value($this->login_user->user_permissions,"can_access_preventive") ==1){
                    $attendanceSubs [] = ["name" => "Preventive", "url" => "preventive"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_reactive") ==1 || get_array_value($this->login_user->user_permissions,"can_access_reactive") ==1){
                    $attendanceSubs [] = ["name" => "Reactive", "url" => "reactive"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_inpections") ==1 || get_array_value($this->login_user->user_permissions,"can_access_inpections") ==1){
                    $attendanceSubs [] = ["name" => "Checklists", "url" => "followups"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_requisitions") ==1 || get_array_value($this->login_user->user_permissions,"can_access_requisitions") ==1){
                    $attendanceSubs [] = ["name" => "Requisitions", "url" => "parts_requisition"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_warranty_parts") ==1 || get_array_value($this->login_user->user_permissions,"can_access_warranty_parts") ==1){
                    $attendanceSubs [] = ["name" => "Warranty Parts", "url" => "warranty_parts"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_fueling") ==1 || get_array_value($this->login_user->user_permissions,"can_access_fueling") ==1){
                    $attendanceSubs [] = ["name" => "Fueling", "url" => "fuel"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_hiring_assets") ==1 || get_array_value($this->login_user->user_permissions,"can_access_hiring_assets") ==1){
                    $attendanceSubs [] = ["name" => "Hiring Assets", "url" => "hire_assets"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_trimmer_sheets") ==1 || get_array_value($this->login_user->user_permissions,"can_access_trimmer_sheets") ==1){
                    $attendanceSubs [] = ["name" => "Trimmer Sheets", "url" => "trimmer_sheets"];
                }
                $attendanceSubs [] = ["name" => "Inventory List Report", "url" => "preventive/inventory_list"];
                $attendanceSubs [] = ["name" => "Checklists Report", "url" => "followups/checklist_range"];
                $attendanceSubs [] = ["name" => "Preventive Maintenance Report", "url" => "maintenance_report/jobcard_range"];
                $attendanceSubs [] = ["name" => "Reactive Maintenance Report", "url" => "maintenance_report/jobcard_range_r"];
                $attendanceSubs [] = ["name" => "Issuance Listing Report", "url" => "parts_requisition/reports"];
                $attendanceSubs [] = ["name" => "User Roles Report", "url" => "user_rights"];


                if(get_array_value($this->login_user->permissions,"can_access_fuel_reports") ==1 || get_array_value($this->login_user->user_permissions,"can_access_fuel_reports") ==1){
                    $attendanceSubs [] = ["name" => "Fuel Reports", "url" => "fuel_reports"];
                }
                    if (get_array_value($this->login_user->permissions,"can_access_technical") ==1 || get_array_value($this->login_user->user_permissions,"can_access_technical") ==1){
                    $sidebar_menu[] = array("name" => "technical", "url" => "preventive", "class" => "fa-subway font-16", "submenu" => $attendanceSubs);
                    }




                    $attendanceSubs = [];
                    if(get_array_value($this->login_user->permissions,"can_access_documents") ==1 || get_array_value($this->login_user->user_permissions,"can_access_documents") ==1){
                    $attendanceSubs [] = ["name" => "Documents", "url" => "legal/documents"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_cases") ==1 || get_array_value($this->login_user->user_permissions,"can_access_cases") ==1){
                    $attendanceSubs [] = ["name" => "Cases & Lawsuits", "url" => "legal/lawsuits"];
                }
                if(get_array_value($this->login_user->permissions,"can_access_customers") ==1 || get_array_value($this->login_user->user_permissions,"can_access_customers") ==1){
                    $attendanceSubs [] = ["name" => "Customers & Suppliers", "url" => "cust_suppliers/index"];
                }
                   if (get_array_value($this->login_user->permissions,"can_access_legal") ==1 || get_array_value($this->login_user->user_permissions,"can_access_legal") ==1) {
                    $sidebar_menu[] = array("name" => "legal", "url" => "attendance", "class" => "fa-road font-16", "submenu" => $attendanceSubs);
                }


                if ($this->login_user->is_admin) {
                    $sidebar_menu[] = array("name" => "settings", "url" => "settings/general", "class" => "fa-wrench");
                }
                elseif(get_array_value($this->login_user->permissions,"can_access_technical_settings") ==1 || get_array_value($this->login_user->user_permissions,"can_access_technical_settings") ==1){
                    $sidebar_menu[] = array("name" => "settings", "url" => "settings/custom", "class" => "fa-wrench");
                }
            } else {
                //client menu

                $sidebar_menu = array(
                    array("name" => "dashboard", "url" => "dashboard", "class" => "fa-desktop"),
                );


                //check message access settings for clients
                if (get_array_value($this->login_user->permissions,"can_access_messages") ==1 || get_array_value($this->login_user->user_permissions,"can_access_messages") ==1) {
                    $sidebar_menu[] = array("name" => "messages", "url" => "messages", "class" => "fa-envelope", "badge" => count_unread_message());
                }

                $openProjects = [];
                if(get_array_value($this->login_user->permissions,"can_access_projects") ==1 || get_array_value($this->login_user->user_permissions,"can_access_projects") ==1){
                $openProjects [] = ["name" => "All Projects", "url" => "projects/all_projects"];
                }

                foreach ($projects as $project) {
                    $openProjects[] = ['name' => $project->title, 'url' => 'projects/view/' . $project->id];
                }

                $sidebar_menu[] = array("name" => "projects", "url" => "projects", "class" => "fa-th-large", "submenu" => $openProjects);

                if (get_setting("module_estimate")) {
                    $sidebar_menu[] = array("name" => "estimates", "url" => "estimates", "class" => "fa-file");
                }

                if (get_setting("module_invoice") == "1") {
                    $sidebar_menu[] = array("name" => "invoices", "url" => "invoices", "class" => "fa-file-text");
                    $sidebar_menu[] = array("name" => "invoice_payments", "url" => "invoice_payments", "class" => "fa-money");
                }

                if (get_setting("module_ticket") == "1") {
                    $sidebar_menu[] = array("name" => "tickets", "url" => "tickets", "class" => "fa-life-ring");
                }

                if (get_setting("module_announcement") == "1") {
                    $sidebar_menu[] = array("name" => "announcements", "url" => "announcements", "class" => "fa-bullhorn");
                }

                $sidebar_menu[] = array("name" => "users", "url" => "clients/users", "class" => "fa-user");
                $sidebar_menu[] = array("name" => "my_profile", "url" => "clients/contact_profile/" . $this->login_user->id, "class" => "fa-cog");
            }

            foreach ($sidebar_menu as $main_menu) {
                $submenu = get_array_value($main_menu, "submenu");
                $expend_class = $submenu ? " expand " : "";
                $active_class = active_menu($main_menu['name'], $submenu);
                $submenu_open_class = "";
                if ($expend_class && $active_class) {
                    $submenu_open_class = " open ";
                }

                $devider_class = get_array_value($main_menu, "devider") ? "devider" : "";
                $badge = get_array_value($main_menu, "badge");
                $badge_class = get_array_value($main_menu, "badge_class");
                ?>
                <li class="<?php echo $active_class . " " . $expend_class . " " . $submenu_open_class . " $devider_class"; ?> main">
                    <a href="<?php echo_uri($main_menu['url']); ?>">
                        <i class="fa <?php echo($main_menu['class']); ?>"></i>
                        <?php if (lang($main_menu['name'])): ?>
                            <span><?php echo lang($main_menu['name']); ?></span>
                        <?php else : ?>
                            <span><?php echo $main_menu['name']; ?></span>
                            <?php
                        endif;

                        if ($badge) {
                            echo "<span class='badge $badge_class'>$badge</span>";
                        }
                        ?>
                    </a>
                    <?php
                    if ($submenu) {
                        echo "<ul>";
                        foreach ($submenu as $s_menu) {
                            ?>
                            <li>
                                <a href="<?php echo_uri($s_menu['url']); ?>">
                                    <i class="dot fa fa-circle"></i>
                                    <?php if (lang($s_menu['name'])): ?>
                                        <span><?php echo lang($s_menu['name']); ?></span>
                                    <?php else : ?>
                                        <span><?php echo $s_menu['name']; ?></span>
                                    <?php endif; ?>
                                </a>
                            </li>
                            <?php
                        }
                        echo "</ul>";
                    }
                    ?>
                </li>
                <?php } ?>
            </ul>
        </div>
    </div><!-- sidebar menu end -->
