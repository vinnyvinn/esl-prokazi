<div class="tab-content">
    <?php echo form_open(get_uri("roles/save_permissions"), array("id" => "permissions-form", "class" => "general-form dashed-row", "role" => "form")); ?>
    <input type="hidden" name="id" value="<?php echo $model_info->id; ?>" />
    <div class="panel">
        <div class="panel-default panel-heading">
            <h4><?php echo lang('permissions') . ": " . $model_info->title; ?></h4>
        </div>
        <div class="panel-body">

            <ul class="permission-list">
                <li>
                    <h5><?php echo lang("set_project_permissions"); ?>:</h5>
                    <div>
                        <?php
                        echo form_checkbox("can_access_projects", "1", $can_access_projects ? true : false, "id='can_access_projects'");
                        ?>
                        <label for="can_access_projects"><?php echo lang("can_access_projects"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_create_projects", "1", $can_create_projects ? true : false, "id='can_create_projects'");
                        ?>
                        <label for="can_create_projects"><?php echo lang("can_create_projects"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_edit_projects", "1", $can_edit_projects ? true : false, "id='can_edit_projects'");
                        ?>
                        <label for="can_edit_projects"><?php echo lang("can_edit_projects"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_delete_projects", "1", $can_delete_projects ? true : false, "id='can_delete_projects'");
                        ?>
                        <label for="can_delete_projects"><?php echo lang("can_delete_projects"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_add_remove_project_members", "1", $can_add_remove_project_members ? true : false, "id='can_add_remove_project_members'");
                        ?>
                        <label for="can_add_remove_project_members"><?php echo lang("can_add_remove_project_members"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_create_tasks", "1", $can_create_tasks ? true : false, "id='can_create_tasks'");
                        ?>
                        <label for="can_create_tasks"><?php echo lang("can_create_tasks"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_edit_tasks", "1", $can_edit_tasks ? true : false, "id='can_edit_tasks'");
                        ?>
                        <label for="can_edit_tasks"><?php echo lang("can_edit_tasks"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_delete_tasks", "1", $can_edit_tasks ? true : false, "id='can_delete_tasks'");
                        ?>
                        <label for="can_delete_tasks"><?php echo lang("can_delete_tasks"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_comment_on_tasks", "1", $can_comment_on_tasks ? true : false, "id='can_comment_on_tasks'");
                        ?>
                        <label for="can_comment_on_tasks"><?php echo lang("can_comment_on_tasks"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_create_milestones", "1", $can_create_milestones ? true : false, "id='can_create_milestones'");
                        ?>
                        <label for="can_create_milestones"><?php echo lang("can_create_milestones"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_edit_milestones", "1", $can_edit_milestones ? true : false, "id='can_edit_milestones'");
                        ?>
                        <label for="can_edit_milestones"><?php echo lang("can_edit_milestones"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_delete_milestones", "1", $can_delete_milestones ? true : false, "id='can_delete_milestones'");
                        ?>
                        <label for="can_delete_milestones"><?php echo lang("can_delete_milestones"); ?></label>
                    </div>

                    <div>
                        <?php
                        echo form_checkbox("can_delete_files", "1", $can_delete_files ? true : false, "id='can_delete_files'");
                        ?>
                        <label for="can_delete_files"><?php echo lang("can_delete_files"); ?></label>
                    </div>

                </li>
                <li>
                    <h5>Tasks:</h5>
                    <div>
                        <?php
                        echo form_checkbox("can_access_tasks", "1", $can_access_tasks ? true : false, "id='can_access_tasks'");
                        ?>
                        <label for="can_access_tasks"><?php echo lang("can_access_tasks"); ?></label>
                    </div>
                </li>
                <li>
                    <h5><?php echo lang("set_team_members_permission"); ?>:</h5>
                    <div>
                        <?php
                        echo form_checkbox("can_view_team_members_contact_info", "1", $can_view_team_members_contact_info ? true : false, "id='can_view_team_members_contact_info'");
                        ?>
                        <label for="can_view_team_members_contact_info"><?php echo lang("can_view_team_members_contact_info"); ?></label>
                    </div>

                    <div>
                        <?php
                        echo form_checkbox("can_view_team_members_social_links", "1", $can_view_team_members_social_links ? true : false, "id='can_view_team_members_social_links'");
                        ?>
                        <label for="can_view_team_members_social_links"><?php echo lang("can_view_team_members_social_links"); ?></label>
                    </div>
                </li>

                <li>
                    <h5><?php echo lang("can_manage_team_members_leave"); ?> <span class="help" data-toggle="tooltip" title="Assign, approve or reject leave applications"><i class="fa fa-question-circle"></i></span> </h5>
                    <div>
                        <?php
                        echo form_radio(array(
                            "id" => "leave_permission_no",
                            "name" => "leave_permission",
                            "value" => "",
                            "class" => "leave_permission toggle_specific",
                                ), $leave, ($leave === "") ? true : false);
                        ?>
                        <label for="leave_permission_no"><?php echo lang("no"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_radio(array(
                            "id" => "leave_permission_all",
                            "name" => "leave_permission",
                            "value" => "all",
                            "class" => "leave_permission toggle_specific",
                                ), $leave, ($leave === "all") ? true : false);
                        ?>
                        <label for="leave_permission_all"><?php echo lang("yes_all_members"); ?></label>
                    </div>
                    <div class="form-group">
                        <?php
                        echo form_radio(array(
                            "id" => "leave_permission_specific",
                            "name" => "leave_permission",
                            "value" => "specific",
                            "class" => "leave_permission toggle_specific",
                                ), $leave, ($leave === "specific") ? true : false);
                        ?>
                        <label for="leave_permission_specific"><?php echo lang("yes_specific_members_or_teams") . " (" . lang("excluding_his_her_leaves") . ")"; ?>:</label>
                        <div class="specific_dropdown">
                            <input type="text" value="<?php echo $leave_specific; ?>" name="leave_permission_specific" id="leave_specific_dropdown" class="w100p validate-hidden"  data-rule-required="true" data-msg-required="<?php echo lang('field_required'); ?>" placeholder="<?php echo lang('choose_members_and_or_teams'); ?>"  />    
                        </div>

                    </div>
                </li>
                <li>
                    <h5><?php echo lang("can_manage_team_members_timecards"); ?> <span class="help" data-toggle="tooltip" title="Add, edit and delete time cards"><i class="fa fa-question-circle"></i></span></h5>
                    <div>
                        <?php
                        echo form_radio(array(
                            "id" => "attendance_permission_no",
                            "name" => "attendance_permission",
                            "value" => "",
                            "class" => "attendance_permission toggle_specific",
                                ), $attendance, ($attendance === "") ? true : false);
                        ?>
                        <label for="attendance_permission_no"><?php echo lang("no"); ?> </label>
                    </div>
                    <div>
                        <?php
                        echo form_radio(array(
                            "id" => "attendance_permission_all",
                            "name" => "attendance_permission",
                            "value" => "all",
                            "class" => "attendance_permission toggle_specific",
                                ), $attendance, ($attendance === "all") ? true : false);
                        ?>
                        <label for="attendance_permission_all"><?php echo lang("yes_all_members"); ?></label>
                    </div>
                    <div class="form-group">
                        <?php
                        echo form_radio(array(
                            "id" => "attendance_permission_specific",
                            "name" => "attendance_permission",
                            "value" => "specific",
                            "class" => "attendance_permission toggle_specific",
                                ), $attendance, ($attendance === "specific") ? true : false);
                        ?>
                        <label for="attendance_permission_specific"><?php echo lang("yes_specific_members_or_teams") . " (" . lang("excluding_his_her_time_cards") . ")"; ?>:</label>
                        <div class="specific_dropdown">
                            <input type="text" value="<?php echo $attendance_specific; ?>" name="attendance_permission_specific" id="attendance_specific_dropdown" class="w100p validate-hidden"  data-rule-required="true" data-msg-required="<?php echo lang('field_required'); ?>" placeholder="<?php echo lang('choose_members_and_or_teams'); ?>"  />
                        </div>
                    </div>

                </li>
                

                <li>
                    <h5>Monitoring Outages:</h5>
                    <div>
                        <?php
                        echo form_checkbox("can_access_outages", "1", $can_access_outages ? true : false, "id='can_access_outages'");
                        ?>
                        <label for="can_access_outages"><?php echo lang("can_access_outages"); ?></label>
                    </div>
                </li>
                <li>
                    <h5><?php echo lang("technical"); ?></h5>
                    <div>
                        <?php
                        echo form_checkbox("can_access_technical", "1", $can_access_technical ? true : false, "id='can_access_technical'");
                        ?>
                        <label for="can_access_technical"><?php echo lang("can_access_technical"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_preventive", "1", $can_access_preventive ? true : false, "id='can_access_preventive'");
                        ?>
                        <label for="can_access_preventive"><?php echo lang("can_access_preventive"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_reactive", "1", $can_access_reactive ? true : false, "id='can_access_reactive'");
                        ?>
                        <label for="can_access_reactive"><?php echo lang("can_access_reactive"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_inpections", "1", $can_access_inpections ? true : false, "id='can_access_inpections'");
                        ?>
                        <label for="can_access_inpections"><?php echo lang("can_access_inpections"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_warranty_parts", "1", $can_access_warranty_parts ? true : false, "id='can_access_warranty_parts'");
                        ?>
                        <label for="can_access_warranty_parts"><?php echo lang("can_access_warranty_parts"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_requisitions", "1", $can_access_requisitions ? true : false, "id='can_access_requisitions'");
                        ?>
                        <label for="can_access_requisitions"><?php echo lang("can_access_requisitions"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_fueling", "1", $can_access_fueling ? true : false, "id='can_access_fueling'");
                        ?>
                        <label for="can_access_fueling"><?php echo lang("can_access_fueling"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_edit_fuel", "1", $can_edit_fuel ? true : false, "id='can_edit_fuel'");
                        ?>
                        <label for="can_edit_fuel"><?php echo lang("can_edit_fuel"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_delete_fuel", "1", $can_delete_fuel ? true : false, "id='can_delete_fuel'");
                        ?>
                        <label for="can_delete_fuel"><?php echo lang("can_delete_fuel"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_hiring_assets", "1", $can_access_hiring_assets ? true : false, "id='can_access_hiring_assets'");
                        ?>
                        <label for="can_access_hiring_assets"><?php echo lang("can_access_hiring_assets"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_edit_hired_assets", "1", $can_edit_hired_assets ? true : false, "id='can_edit_hired_assets'");
                        ?>
                        <label for="can_edit_hired_assets"><?php echo lang("can_edit_hired_assets"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_delete_hired_assets", "1", $can_delete_hired_assets ? true : false, "id='can_delete_hired_assets'");
                        ?>
                        <label for="can_delete_hired_assets"><?php echo lang("can_delete_hired_assets"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_trimmer_sheets", "1", $can_access_trimmer_sheets ? true : false, "id='can_access_trimmer_sheets'");
                        ?>
                        <label for="can_access_trimmer_sheets"><?php echo lang("can_access_trimmer_sheets"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_edit_trimmer_sheets", "1", $can_edit_trimmer_sheets ? true : false, "id='can_edit_trimmer_sheets'");
                        ?>
                        <label for="can_edit_trimmer_sheets"><?php echo lang("can_edit_trimmer_sheets"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_delete_trimmer_sheets", "1", $can_delete_trimmer_sheets ? true : false, "id='can_delete_trimmer_sheets'");
                        ?>
                        <label for="can_delete_trimmer_sheets"><?php echo lang("can_delete_trimmer_sheets"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("maintenance_reports", "1", $maintenance_reports ? true : false, "id='maintenance_reports'");
                        ?>
                        <label for="maintenance_reports"><?php echo lang("maintenance_reports"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_fuel_reports", "1", $can_access_fuel_reports ? true : false, "id='can_access_fuel_reports'");
                        ?>
                        <label for="can_access_fuel_reports"><?php echo lang("can_access_fuel_reports"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_technical_settings", "1", $can_access_technical_settings ? true : false, "id='can_access_technical_settings'");
                        ?>
                        <label for="can_access_technical_settings"><?php echo lang("can_access_technical_settings"); ?></label>
                    </div>
                    
                </li>
              <h5><?php echo lang("defferals")?></h5>
              <li>
                  <div>
                        <?php
                        echo form_checkbox("can_access_defferals", "1", $can_access_defferals ? true : false, "id='can_access_defferals'");
                        ?>
                        <label for="can_access_defferals"><?php echo lang("can_access_defferals"); ?></label>
                    </div>

                    <div>
                        <?php
                        echo form_checkbox("can_access_project_defferals", "1", $can_access_project_defferals ? true : false, "id='can_access_project_defferals'");
                        ?>
                        <label for="can_access_project_defferals"><?php echo lang("can_access_project_defferals"); ?></label>
                    </div>
                     <div>
                        <?php
                        echo form_checkbox("can_access_accounts", "1", $can_access_accounts ? true : false, "id='can_access_accounts'");
                        ?>
                        <label for="can_access_accounts"><?php echo lang("can_access_accounts"); ?></label>
                    </div>

              </li>

               <li>
                    <h5><?php echo lang("administration"); ?></h5>
                    <div>
                        <?php
                        echo form_checkbox("can_access_administration", "1", $can_access_administration ? true : false, "id='can_access_administration'");
                        ?>
                        <label for="can_access_administration"><?php echo lang("can_access_administration"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_approve_inventory", "1", $can_approve_inventory ? true : false, "id='can_approve_inventory'");
                        ?>
                        <label for="can_approve_inventory"><?php echo lang("can_approve_inventory"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_disapprove_inventory", "1", $can_disapprove_inventory ? true : false, "id='can_disapprove_inventory'");
                        ?>
                        <label for="can_disapprove_inventory"><?php echo lang("can_disapprove_inventory"); ?></label>
                    </div>

                    <div>
                        <?php
                        echo form_checkbox("can_edit_inventory", "1", $can_edit_inventory ? true : false, "id='can_edit_inventory'");
                        ?>
                        <label for="can_edit_inventory"><?php echo lang("can_edit_inventory"); ?></label>
                    </div>

                    <div>
                        <?php
                        echo form_checkbox("can_view_recieved_parcels", "1", $can_view_recieved_parcels ? true : false, "id='can_view_recieved_parcels'");
                        ?>
                        <label for="can_view_recieved_parcels"><?php echo lang("can_view_recieved_parcels"); ?></label>
                    </div>

                    <div>
                        <?php
                        echo form_checkbox("can_view_inwards_parcels", "1", $can_view_inwards_parcels ? true : false, "id='can_view_inwards_parcels'");
                        ?>
                        <label for="can_view_inwards_parcels"><?php echo lang("can_view_inwards_parcels"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_view_send_parcels", "1", $can_view_send_parcels ? true : false, "id='can_view_send_parcels'");
                        ?>
                        <label for="can_view_send_parcels"><?php echo lang("can_view_send_parcels"); ?></label>
                    </div>
                     <div>
                        <?php
                        echo form_checkbox("can_view_outwards_parcels", "1", $can_view_outwards_parcels ? true : false, "id='can_view_outwards_parcels'");
                        ?>
                        <label for="can_view_outwards_parcels"><?php echo lang("can_view_outwards_parcels"); ?></label>
                    </div>

                                         <div>
                        <?php
                        echo form_checkbox("can_view_recieved_cheques", "1", $can_view_recieved_cheques ? true : false, "id='can_view_recieved_cheques'");
                        ?>
                        <label for="can_view_recieved_cheques"><?php echo lang("can_view_recieved_cheques"); ?></label>
                    </div>
                                         <div>
                        <?php
                        echo form_checkbox("can_view_inwards_cheques", "1", $can_view_inwards_cheques ? true : false, "id='can_view_inwards_cheques'");
                        ?>
                        <label for="can_view_inwards_cheques"><?php echo lang("can_view_inwards_cheques"); ?></label>
                    </div>
                                         <div>
                        <?php
                        echo form_checkbox("can_view_send_cheques", "1", $can_view_send_cheques ? true : false, "id='can_view_send_cheques'");
                        ?>
                        <label for="can_view_send_cheques"><?php echo lang("can_view_send_cheques"); ?></label>
                    </div>
                                         <div>
                        <?php
                        echo form_checkbox("can_view_outwards_cheques", "1", $can_view_outwards_cheques ? true : false, "id='can_view_outwards_cheques'");
                        ?>
                        <label for="can_view_outwards_cheques"><?php echo lang("can_view_outwards_cheques"); ?></label>
                    </div>


                                         <div>
                        <?php
                        echo form_checkbox("can_receive_parcel", "1", $can_receive_parcel ? true : false, "id='can_receive_parcel'");
                        ?>
                        <label for="can_receive_parcel"><?php echo lang("can_receive_parcel"); ?></label>
                    </div>
                                         <div>
                        <?php
                        echo form_checkbox("can_assign_parcel", "1", $can_assign_parcel ? true : false, "id='can_assign_parcel'");
                        ?>
                        <label for="can_assign_parcel"><?php echo lang("can_assign_parcel"); ?></label>
                    </div>
                                         <div>
                        <?php
                        echo form_checkbox("can_send_parcel", "1", $can_send_parcel ? true : false, "id='can_send_parcel'");
                        ?>
                        <label for="can_send_parcel"><?php echo lang("can_send_parcel"); ?></label>
                    </div>
                                         <div>
                        <?php
                        echo form_checkbox("can_assign_parcel_outwards", "1", $can_assign_parcel_outwards ? true : false, "id='can_assign_parcel_outwards'");
                        ?>
                        <label for="can_assign_parcel_outwards"><?php echo lang("can_assign_parcel_outwards"); ?></label>
                    </div>

                    <div>
                        <?php
                        echo form_checkbox("can_receive_cheque", "1", $can_receive_cheque ? true : false, "id='can_receive_cheque'");
                        ?>
                        <label for="can_receive_cheque"><?php echo lang("can_receive_cheque"); ?></label>
                    </div>
                                         <div>
                        <?php
                        echo form_checkbox("can_assign_cheque", "1", $can_assign_cheque ? true : false, "id='can_assign_cheque'");
                        ?>
                        <label for="can_assign_cheque"><?php echo lang("can_assign_cheque"); ?></label>
                    </div>
                                         <div>
                        <?php
                        echo form_checkbox("can_send_cheque", "1", $can_send_cheque ? true : false, "id='can_send_cheque'");
                        ?>
                        <label for="can_send_cheque"><?php echo lang("can_send_cheque"); ?></label>
                    </div>
                                         <div>
                        <?php
                        echo form_checkbox("can_assign_cheque_outwards", "1", $can_assign_cheque_outwards ? true : false, "id='can_assign_cheque_outwards'");
                        ?>
                        <label for="can_assign_cheque_outwards"><?php echo lang("can_assign_cheque_outwards"); ?></label>
                    </div>
                   
                </li> 


                <h5><?php echo lang("ict")?></h5>
                <li>
                   <div>
                        <?php
                        echo form_checkbox("can_view_checklists", "1", $can_view_checklists ? true : false, "id='can_view_checklists'");
                        ?>
                        <label for="can_view_checklists"><?php echo lang("can_view_checklists"); ?></label>
                    </div>  
                    <div>
                        <?php
                        echo form_checkbox("can_view_support_tickets", "1", $can_view_support_tickets ? true : false, "id='can_view_support_tickets'");
                        ?>
                        <label for="can_view_support_tickets"><?php echo lang("can_view_support_tickets"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_view_checklists_reports", "1", $can_view_checklists_reports ? true : false, "id='can_view_checklists_reports'");
                        ?>
                        <label for="can_view_checklists_reports"><?php echo lang("can_view_checklists_reports"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_view_support_reports", "1", $can_view_support_reports ? true : false, "id='can_view_support_reports'");
                        ?>
                        <label for="can_view_support_reports"><?php echo lang("can_view_support_reports"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_view_third_level_reports", "1", $can_view_third_level_reports ? true : false, "id='can_view_third_level_reports'");
                        ?>
                        <label for="can_view_third_level_reports"><?php echo lang("can_view_third_level_reports"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_mark_ticket_done", "1", $can_mark_ticket_done ? true : false, "id='can_mark_ticket_done'");
                        ?>
                        <label for="can_mark_ticket_done"><?php echo lang("can_mark_ticket_done"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_mark_ticket_solved", "1", $can_mark_ticket_solved ? true : false, "id='can_mark_ticket_solved'");
                        ?>
                        <label for="can_mark_ticket_solved"><?php echo lang("can_mark_ticket_solved"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_mark_ticket_closed", "1", $can_mark_ticket_closed ? true : false, "id='can_mark_ticket_closed'");
                        ?>
                        <label for="can_mark_ticket_closed"><?php echo lang("can_mark_ticket_closed"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_view_assets", "1", $can_view_assets ? true : false, "id='can_view_assets'");
                        ?>
                        <label for="can_view_assets"><?php echo lang("can_view_assets"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_view_assets_reports", "1", $can_view_assets_reports ? true : false, "id='can_view_assets_reports'");
                        ?>
                        <label for="can_view_assets_reports"><?php echo lang("can_view_assets_reports"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_view_assets_maintanance", "1", $can_view_assets_maintanance ? true : false, "id='can_view_assets_maintanance'");
                        ?>
                        <label for="can_view_assets_maintanance"><?php echo lang("can_view_assets_maintanance"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_schedule_maintenance", "1", $can_schedule_maintenance ? true : false, "id='can_schedule_maintenance'");
                        ?>
                        <label for="can_schedule_maintenance"><?php echo lang("can_schedule_maintenance"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_view_assets_maintanance_reports", "1", $can_view_assets_maintanance_reports ? true : false, "id='can_view_assets_maintanance_reports'");
                        ?>
                        <label for="can_view_assets_maintanance_reports"><?php echo lang("can_view_assets_maintanance_reports"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_view_assets_disposals", "1", $can_view_assets_disposals ? true : false, "id='can_view_assets_disposals'");
                        ?>
                        <label for="can_view_assets_disposals"><?php echo lang("can_view_assets_disposals"); ?></label>
                    </div>
                </li>  



                    <h5><?php echo lang("legal"); ?></h5>
                    <li>
                      <div>
                        <?php
                        echo form_checkbox("can_access_legal", "1", $can_access_legal ? true : false, "id='can_access_legal'");
                        ?>
                        <label for="can_access_legal"><?php echo lang("can_access_legal"); ?></label>
                    </div>
                   <div>
                        <?php
                        echo form_checkbox("can_access_documents", "1", $can_access_documents ? true : false, "id='can_access_documents'");
                        ?>
                        <label for="can_access_documents"><?php echo lang("can_access_documents"); ?></label>
                    </div>
                        <div>
                            <?php
                            echo form_checkbox("can_access_documents", "1", $can_access_documents ? true : false, "id='can_access_documents'");
                            ?>
                            <label for="can_access_documents"><?php echo lang("can_access_documents"); ?></label>
                        </div>
                        <div>
                            <?php
                            echo form_checkbox("can_edit_legal_documents", "1", $can_edit_legal_documents ? true : false, "id='can_edit_legal_documents'");
                            ?>
                            <label for="can_edit_legal_documents"><?php echo lang("can_edit_legal_documents"); ?></label>
                        </div>
                        <div>
                            <?php
                            echo form_checkbox("can_delete_legal_documents", "1", $can_delete_legal_documents ? true : false, "id='can_delete_legal_documents'");
                            ?>
                            <label for="can_delete_legal_documents"><?php echo lang("can_delete_legal_documents"); ?></label>
                        </div>
                        <div>
                            <?php
                            echo form_checkbox("can_edit_legal_document_types", "1", $can_edit_legal_document_types ? true : false, "id='can_edit_legal_document_types'");
                            ?>
                            <label for="can_edit_legal_document_types"><?php echo lang("can_edit_legal_document_types"); ?></label>
                        </div>
                        <div>
                            <?php
                            echo form_checkbox("can_delete_legal_document_types", "1", $can_delete_legal_document_types ? true : false, "id='can_delete_legal_document_types'");
                            ?>
                            <label for="can_delete_legal_document_types"><?php echo lang("can_delete_legal_document_types"); ?></label>
                        </div>
                        <div>
                            <?php
                            echo form_checkbox("can_edit_legal_reminders", "1", $can_edit_legal_reminders ? true : false, "id='can_edit_legal_reminders'");
                            ?>
                            <label for="can_edit_legal_reminders"><?php echo lang("can_edit_legal_reminders"); ?></label>
                        </div>
                        <div>
                            <?php
                            echo form_checkbox("can_delete_legal_reminders", "1", $can_delete_legal_reminders ? true : false, "id='can_delete_legal_reminders'");
                            ?>
                            <label for="can_delete_legal_reminders"><?php echo lang("can_delete_legal_reminders"); ?></label>
                        </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_cases", "1", $can_access_cases ? true : false, "id='can_view_assets_disposals'");
                        ?>
                        <label for="can_access_cases"><?php echo lang("can_access_cases"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_customers", "1", $can_access_customers ? true : false, "id='can_access_customers'");
                        ?>
                        <label for="can_access_customers"><?php echo lang("can_access_customers"); ?></label>
                    </div>
                </li>
                <h5>Leads</h5>
                <li>
                    
                    <div>
                        <?php
                        echo form_checkbox("can_access_leads", "1", $can_access_leads ? true : false, "id='can_access_leads'");
                        ?>
                        <label for="can_access_leads"><?php echo lang("can_access_leads"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_edit_leads", "1", $can_edit_leads ? true : false, "id='can_edit_leads'");
                        ?>
                        <label for="can_edit_leads"><?php echo lang("can_edit_leads"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_delete_leads", "1", $can_delete_leads ? true : false, "id='can_delete_leads'");
                        ?>
                        <label for="can_delete_leads"><?php echo lang("can_delete_leads"); ?></label>
                    </div>
                </li>
                <h5>Messages</h5>
                <li>
                    
                    <div>
                        <?php
                        echo form_checkbox("can_access_messages", "1", $can_access_messages ? true : false, "id='can_access_messages'");
                        ?>
                        <label for="can_access_messages"><?php echo lang("can_access_messages"); ?></label>
                    </div>
                </li>
                <h5>Planner</h5>
                <li>
                    
                    <div>
                        <?php
                        echo form_checkbox("can_access_planner", "1", $can_access_planner ? true : false, "id='can_access_planner'");
                        ?>
                        <label for="can_access_planner"><?php echo lang("can_access_planner"); ?></label>
                    </div>
                </li>
                <h5><?php echo lang("team")?></h5>
               <li>
                   <div>
                        <?php
                        echo form_checkbox("can_access_team", "1", $can_access_legal ? true : false, "id='can_access_team'");
                        ?>
                        <label for="can_access_team"><?php echo lang("can_access_team"); ?></label>
                    </div>

                    <div>
                        <?php
                        echo form_checkbox("can_access_team_members", "1", $can_access_legal ? true : false, "id='can_access_team_members'");
                        ?>
                        <label for="can_access_team_members"><?php echo lang("can_access_team_members"); ?></label>
                    </div>
                    
               </li>
               <h5><?php echo lang("knowledgebase");?></h5>
               <li>
                  <div>
                        <?php
                        echo form_checkbox("can_view_knowledgebase", "1", $can_view_knowledgebase ? true : false, "id='can_view_knowledgebase'");
                        ?>
                        <label for="can_view_knowledgebase"><?php echo lang("can_view_knowledgebase"); ?></label>
                    </div>
                     <div>
                        <?php
                        echo form_checkbox("can_access_knowledgebase", "1", $can_access_knowledgebase ? true : false, "id='can_access_knowledgebase'");
                        ?>
                        <label for="can_access_knowledgebase"><?php echo lang("can_access_knowledgebase"); ?></label>
                    </div>
                     <div>
                        <?php
                        echo form_checkbox("can_add_knowledgebase", "1", $can_add_knowledgebase ? true : false, "id='can_add_knowledgebase'");
                        ?>
                        <label for="can_add_knowledgebase"><?php echo lang("can_add_knowledgebase"); ?></label>
                    </div>  
               </li>
                <h5><?php echo lang("invoice"); ?></h5>
                <li>
                    
                    <div>
                        <?php
                        echo form_checkbox("can_access_invoice", "1", $can_access_invoice ? true : false, "id='can_access_invoice'");
                        ?>
                        <label for="can_access_invoice"><?php echo lang("can_access_invoice"); ?></label>
                    </div>
                    <li>
                    <h5><?php echo lang("finance"); ?></h5>
                    <div>
                        <?php
                        echo form_checkbox("can_access_finance", "1", $can_access_finance ? true : false, "id='can_access_finance'");
                        ?>
                        <label for="can_access_finance"><?php echo lang("can_access_finance"); ?></label>
                    </div>
                     <div>
                        <?php
                        echo form_checkbox("can_access_payments", "1", $can_access_payments ? true : false, "id='can_access_payments'");
                        ?>
                        <label for="can_access_payments"><?php echo lang("can_access_payments"); ?></label>
                    </div>
                     <div>
                        <?php
                        echo form_checkbox("can_access_expenses", "1", $can_access_expenses ? true : false, "id='can_access_expenses'");
                        ?>
                        <label for="can_access_expenses"><?php echo lang("can_access_expenses"); ?></label>
                    </div>
                     <div>
                        <?php
                        echo form_checkbox("can_access_income_expenses", "1", $can_access_income_expenses ? true : false, "id='can_access_income_expenses'");
                        ?>
                        <label for="can_access_income_expenses"><?php echo lang("can_access_income_expenses"); ?></label>
                    </div>
                  
                </li>
                
                          <li>
                    <h5><?php echo lang("can_access_clients_information"); ?> <span class="help" data-toggle="tooltip" title="Hides all information of clients except company name."><i class="fa fa-question-circle"></i></span></h5>
                    <div>
                        <?php
                        echo form_radio(array(
                            "id" => "client_no",
                            "name" => "client_permission",
                            "value" => "",
                                ), $client, ($client === "") ? true : false);
                        ?>
                        <label for="client_no"><?php echo lang("no"); ?> </label>
                    </div>
                    <div>
                        <?php
                        echo form_radio(array(
                            "id" => "client_yes",
                            "name" => "client_permission",
                            "value" => "all",
                                ), $client, ($client === "all") ? true : false);
                        ?>
                        <label for="client_yes"><?php echo lang("yes"); ?></label>
                    </div>
                </li>
                <h5><?php echo lang("tickets"); ?></h5>
                <li>
                    
                    <div>
                        <?php
                        echo form_checkbox("can_access_tickets", "1", $can_access_tickets ? true : false, "id='can_access_tickets'");
                        ?>
                        <label for="can_access_tickets"><?php echo lang("can_access_tickets"); ?></label>
                    </div>
                </li>
                <li>
                    <h5><?php echo lang("can_manage_announcements"); ?></h5>
                    <div>
                        <?php
                        echo form_radio(array(
                            "id" => "announcement_no",
                            "name" => "announcement_permission",
                            "value" => "",
                                ), $announcement, ($announcement === "") ? true : false);
                        ?>
                        <label for="announcement_no"><?php echo lang("no"); ?> </label>
                    </div>
                    <div>
                        <?php
                        echo form_radio(array(
                            "id" => "announcement_yes",
                            "name" => "announcement_permission",
                            "value" => "all",
                                ), $announcement, ($announcement === "all") ? true : false);
                        ?>
                        <label for="announcement_yes"><?php echo lang("yes"); ?></label>
                    </div>
                </li>
                <h5><?php echo lang("timecard")?></h5>
                <li>
                     <div>
                        <?php
                        echo form_checkbox("can_access_timecard", "1", $can_access_timecard ? true : false, "id='can_access_timecard'");
                        ?>
                        <label for="can_access_timecard"><?php echo lang("can_access_timecard"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_attendace", "1", $can_access_attendace ? true : false, "id='can_access_attendace'");
                        ?>
                        <label for="can_access_attendace"><?php echo lang("can_access_attendace"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_task_summary", "1", $can_access_task_summary ? true : false, "id='can_access_task_summary'");
                        ?>
                        <label for="can_access_task_summary"><?php echo lang("can_access_task_summary"); ?></label>
                    </div>
                    <div>
                        <?php
                        echo form_checkbox("can_access_day_summary", "1", $can_access_day_summary ? true : false, "id='can_access_day_summary'");
                        ?>
                        <label for="can_access_day_summary"><?php echo lang("can_access_day_summary"); ?></label>
                    </div>
                </li>
            </ul>

        </div>
        <div class="panel-footer">
            <button type="submit" class="btn btn-primary mr10"><span class="fa fa-check-circle"></span> <?php echo lang('save'); ?></button>
        </div>
    </div>
    <?php echo form_close(); ?>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#permissions-form").appForm({
            isModal: false,
            onSuccess: function (result) {
                appAlert.success(result.message, {duration: 10000});
            }
        });

        $("#leave_specific_dropdown, #attendance_specific_dropdown").select2({
            multiple: true,
            formatResult: teamAndMemberSelect2Format,
            formatSelection: teamAndMemberSelect2Format,
            data: <?php echo ($members_and_teams_dropdown); ?>
        });
        $("#ticket_types_specific_dropdown").select2({
            multiple: true,
            data: <?php echo ($ticket_types_dropdown); ?>
        });

        $('[data-toggle="tooltip"]').tooltip();

        $(".toggle_specific").click(function () {
            toggle_specific_dropdown();
        });

        toggle_specific_dropdown();
        function toggle_specific_dropdown() {
            var selectors = [".leave_permission", ".attendance_permission"];
            $.each(selectors, function (index, element) {
                var $element = $(element + ":checked");
                if ($element.val() === "specific") {
                    $element.closest("li").find(".specific_dropdown").show().find("input").addClass("validate-hidden");
                } else {
                    //console.log($element.closest("li").find(".specific_dropdown"));
                    $(element).closest("li").find(".specific_dropdown").hide().find("input").removeClass("validate-hidden");
                }
            });

        }
    });
</script>    
