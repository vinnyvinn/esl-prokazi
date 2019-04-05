<?php echo form_open('"id" = "create-parts-form", "class" = "general-form", "role" = "form"'); ?>
<div class="modal-body clearfix">
    <div class="panel panel-default">
        <div class="panel-heading" style="margin-top: -8px">Checklists Report

            <?php
            if($checklists) {
            echo anchor(get_uri("checklists/print_report/".$dates['from'].'/'.$dates['to']), "<i class='fa fa-file-pdf-o'></i> " . 'Export Pdf', array("class" => "btn btn-success pull-right rq", "title" => lang('print_report')));
                echo anchor(get_uri("checklists/create_checklist/".$dates['from'].'/'.$dates['to']), "<i class='fa fa-file-excel-o'></i> " . 'Export Excel', array("class" => "btn btn-success pull-right rq walla", "title" => lang('print_report')));
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
                        <th>Ref No</th>
                        <th>Performed by</th>
                        <th>Date</th>
                        <th>Status</th>

                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($checklists as $checklist) {?>
                        <tr>

                            <td><?php echo $checklist->id?></td>
                            <td><a href="<?php echo base_url('checklists/view_checklist/'.$checklist->id);?>" class="label label-info"><?php echo $checklist->ref_no?></a></td>
                            <td><?php echo $checklist->username?></td>
                            <td><?php echo $checklist->performed_on?></td>
                            <td><?php echo $checklist->state?></td>


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


