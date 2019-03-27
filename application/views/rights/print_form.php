<img src="./assets/images/esl.png" style="text-align: right;">
<h2>EXPRESS SHIPPING & LOGISTICS E.A.LTD</h2>
<center>
    User Roles Report
</center>

</div>

<table class="table table-striped table-bordered"  style="width: 100%">
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



<link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/js/datatable/css/dataTables.bootstrap.min.css">
<style type="text/css">
    .pdfcolor{
        color: red;
    }
</style>


<style>
    table {
        color: #333; /* Lighten up font color */
        font-family: Helvetica, Arial, sans-serif; /* Nicer font */
        width: 640px;
        border-collapse:
            collapse; border-spacing: 0;
    }

    td, th { border: 1px solid #CCC; height: 30px; } /* Make cells a bit taller */

    th {
        background: #F3F3F3; /* Light grey background */
        font-weight: bold; /* Make sure they're bold */
    }

    td {
        background: #FAFAFA; /* Lighter grey background */
        text-align: center; /* Center our text */
    }
</style>
