<?php echo form_open('"id" = "create-parts-form", "class" = "general-form", "role" = "form"'); ?>
<div class="modal-body clearfix">
    <div class="panel panel-default">
        <div class="panel-heading" style="margin-top: -8px"> Preventive Maintenance Report

            <?php
            if($job_cards) {
                echo anchor(get_uri("maintenance_report/print_report_p/".$dates['from'].'/'.$dates['to']), "<i class='fa fa-file-pdf-o'></i> " . 'Export Pdf', array("class" => "btn btn-success pull-right rq", "title" => lang('print_report')));
                echo anchor(get_uri("maintenance_report/extract_m/".$dates['from'].'/'.$dates['to']), "<i class='fa fa-file-excel-o'></i> " .'Export Excel', array("class" => "btn btn-success pull-right rq walla", "title" => lang('print_report')));
            }?>
        </div>
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-striped table-bordered" id="jt" style="width: 100%">
                    <thead>
                    <tr>
                        <th>No.</th>
                        <th>Code</th>
                        <th>Description</th>
                        <th>Track By</th>
                        <th>Status</th>
                        <th>Date</th>

                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($job_cards as $prev) {?>
                        <tr>

                            <td><?php echo $prev->id?></td>
                            <td><?php echo $prev->card_no?></td>
                            <td><?php echo $prev->description?></td>
                            <td><?php echo $prev->track_by?></td>
                            <td><?php echo $prev->status?></td>
                            <td><?php echo date('d-m-Y',strtotime($prev->created_at))?></td>


                        </tr>
                    <?php }?>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</div>
</div>
<link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/js/datatable/css/dataTables.bootstrap.min.css">

<script type="text/javascript">
    $(document).ready(function() {
        $('#jt').DataTable();
    } );
</script>


