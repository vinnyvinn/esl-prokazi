<?php

function secondsToTime($seconds) {
    $dtF = new \DateTime('@0');
    $dtT = new \DateTime("@$seconds");
    return $dtF->diff($dtT)->format('%a days, %h hours, %i minutes');
}

?>
<img src="./assets/images/esl.png" style="text-align: right;">
<h2>EXPRESS SHIPPING & LOGISTICS E.A.LTD</h2>
<center>
    Support Entries Report
</center>

</div>

<table class="table table-striped table-bordered"  style="width: 100%">
    <thead>
    <tr>


        <th width="10%">Title</th>
        <th width="10%">Ticket Type</th>
        <th width="15%">Created by</th>
         <th width="15%">Assigned To</th>
        <th width="10%">Open Date</th>
        <th width="10%">Closed Date</th>
        <th width="10%">Duration</th>
        <th width="20%">Comments</th>
    </tr>
    </thead>
    <tbody>

    <?php foreach ($entries as $entry) {?>
        <tr>


            <td><?php echo $entry->title ?></td>
            <td><?php echo $entry->ticket_type ?></td>
            <td><?php echo $entry->username ?></td>
            <td><?php echo $entry->assign_to ? $this->db->query("select * from users where id={$entry->assign_to}")->row()->first_name.' '.$this->db->query("select * from users where id={$entry->assign_to}")->row()->last_name : ''?></td>
            <td><?php $created = new DateTime($entry->created_at);
                echo $created->format('d/m/y'); ?></td>
            <td><?php $date = new DateTime($entry->closed_date);
                echo $date->format('d/m/Y') ?></td>
            <td><?php
                $start_date=strtotime($entry->created_at);
                $end_date=strtotime($entry->closed_date);
                if($end_date) {
                    $d_t =(($end_date/(60*60)) - ($start_date/(60*60)));

                    echo ceil($d_t) .'hrs';
                }
                ?>

            </td>
            <td>
                <?php
                $comments = $this->db->query("SELECT * FROM support_comments WHERE ticket_id={$entry->id}")->result();
                if($comments){
                    ?>
                    <ul class="list-group">
                        <?php
                        foreach ($comments as $comm){
                            ?>
                            <li class="list-group-item">
                                <?php
                                echo $comm->description;
                                ?>
                            </li>
                        <?php }?>
                    </ul>
                <?php }?>
            </td>

        </tr>
    <?php }?>

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
