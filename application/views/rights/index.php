<?php echo form_open('"id" = "create-parts-form", "class" = "general-form", "role" = "form"'); ?>

<div class="modal-body clearfix">
    <div class="panel panel-default">
        <div class="panel-heading" style="margin-top: -8px">User Roles Report
            <a href="<?php echo base_url('user_rights/print_form/' . $role_type); ?>"
               class="btn btn-info btn-sm pull-right"><i class="fa fa-file-pdf-o"> Export Pdf</i></a>
            <a href="<?php echo base_url('user_rights/print_u/' . $role_type); ?>" class="btn btn-info btn-sm pull-right walla"><i class="fa fa-file-excel-o"> Export Excel</i></a>
        </div>

        <div class="panel-body">
            <div class="row">
                <div class="col-sm-12">
                    <table class="table table-striped table-bordered" id="jt" style="width: 100%">
                        <thead>
                        <tr>
                            <th>No.</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Permissions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($roles as $role) { ?>
                            <tr>
                                <td><?php echo $role->id ?></td>
                                <td><?php echo $role->first_name . ' ', $role->last_name ?></td>
                                <td><?php echo $role->email ?></td>

                                <td>

                                    <?php
                                    if (isset($role->permissions)) {
                                        $perms = unserialize($role->permissions);
                                        $search_array = $perms;
                                        if (array_key_exists('can_access_technical', $search_array) == 1) {
                                            echo "Can access Technical";
                                        }
                                        if (array_key_exists('can_access_legal', $search_array) == 1) {
                                            echo "<br />Can access Legal";
                                        }
                                        if (array_key_exists('can_access_administration', $search_array) == 1) {
                                            echo "<br />Can access Administration";
                                        }
                                        if (array_key_exists('can_access_finance', $search_array) == 1) {
                                            echo "<br />Can access Finance";
                                        }
                                        if (array_key_exists('can_access_invoice', $search_array) == 1) {
                                            echo "<br />Can access Invoice";
                                        }
                                        if (array_key_exists('can_access_defferals', $search_array) == 1) {
                                            echo "<br />Can access Defferals";
                                        }
                                        if (array_key_exists('can_access_team', $search_array) == 1) {
                                            echo "<br />Can access Team Members";
                                        }
                                        if (array_key_exists('can_view_knowledgebase', $search_array) == 1) {
                                            echo "<br />Can access Knowledgebase";
                                        }
                                        if (array_key_exists('can_access_timecard', $search_array) == 1) {
                                            echo "<br />Can access Timesheets";
                                        }
                                        if (array_key_exists('can_access_leads', $search_array) == 1) {
                                            echo "<br />Can access Leads";
                                        }
                                        if (array_key_exists('can_access_outages', $search_array) == 1) {
                                            echo "<br />Can access Monitoring Outages";
                                        }
                                        if (array_key_exists('can_view_checklists', $search_array) == 1) {
                                            echo "<br />Can view Checklists";
                                        }

                                    } ?>


                                </td>

                            </tr>
                        <?php } ?>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/js/datatable/css/dataTables.bootstrap.min.css">

<script type="text/javascript">
    $(document).ready(function () {
        $('#jt').DataTable();
    });
</script>


