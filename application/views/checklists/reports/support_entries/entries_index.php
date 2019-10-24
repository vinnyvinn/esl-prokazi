<?php

//function secondsToTime($seconds) {
//    $dtF = new \DateTime('@0');
//    $dtT = new \DateTime("@$seconds");
//    return $dtF->diff($dtT)->format('%a days, %h hours, %i minutes');
//}
//
//?>

<?php echo form_open('"id" = "create-parts-form", "class" = "general-form", "role" = "form"'); ?>
<div class="modal-body clearfix">
    <div class="panel panel-default">
        <div class="panel-heading" style="margin-top: -8px">Support Entries Report

            <?php

            if ($entries) {
                echo anchor(get_uri("ict_reports/print_entries/" . $dates['from'] . '/' . $dates['to']), "<i class='fa fa-file-pdf-o'></i> " . 'Export pdf', array("class" => "btn btn-success pull-right rq", "title" => lang('print_report')));
                echo anchor(get_uri("ict_reports/createXLS/" . $dates['from'] . '/' . $dates['to']), "<i class='fa fa-file-excel-o'></i> " . 'Export Excel', array("class" => "btn btn-success pull-right rq walla", "title" => lang('print_report')));
            } ?>
        </div>
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-striped table-bordered" id="jt" style="width: 100%">
                    <thead>
                    <tr>
                        <th>No.</th>
                        <th>Title</th>
                        <th width="2px">Ticket Type</th>
                        <th width="120px">Created by</th>
                        <th width="120px">Assigned To</th>
                        <th width="4px">Open Date</th>
                        <th width="4px">Closed Date</th>
                        <th>Duration</th>
                        <th>Comments</th>

                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($entries as $entry) { ?>
                        <tr>
                            <td><?php echo $entry->id ?></td>
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


