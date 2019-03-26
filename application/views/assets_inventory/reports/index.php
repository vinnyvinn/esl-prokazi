<?php echo form_open('"id" = "create-parts-form", "class" = "general-form", "role" = "form"'); ?>
<div class="modal-body clearfix">
    <div class="panel panel-default">
        <div class="panel-heading" style="margin-top: -8px"> Report

            <?php
            if($assets) {
                echo anchor(get_uri("inventory_assets/print_report/".$dates['from'].'/'.$dates['to']), "<i class='fa fa-print'></i> " . lang('print_report'), array("class" => "btn btn-success pull-right rq", "title" => lang('print_report'))); }?>
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
                        <th>Title</th>
                        <th>Model No</th>
                        <th>Serial No</th>
                        <th>Custodian</th>
                        <th>Date</th>

                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($assets as $asset) {?>
                        <tr>

                            <td><?php echo $asset->id?></td>
                            <td><a href="<?php echo base_url('inventory_assets/view_asset/'.$asset->id);?>" class="label label-info"><?php echo $asset->card_no?></a></td>
                            <td><?php echo $asset->title?></td>
                            <td><?php echo $asset->model_no?></td>
                            <td><?php echo $asset->serial_no?></td>
                            <td><?php echo $asset->username?></td>
                            <td><?php echo $asset->updated_at?></td>


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


