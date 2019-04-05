<?php echo form_open('"id" = "create-parts-form", "class" = "general-form", "role" = "form"'); ?>

<div class="modal-body clearfix">
    <div class="panel panel-default">
        <div class="panel-heading">ICT Assets Maintainance Reports
            <a href="<?php echo base_url('ict_reports/print_asset_form');?>" class="btn btn-info btn-sm pull-right"  style="margin-top: -4px"><i class="fa fa-file-pdf-o"> Export Pdf</i></a>
            <a href="<?php echo base_url('ict_reports/extract_asset');?>" class="btn btn-info btn-sm pull-right walla"  style="margin-top: -4px"><i class="fa fa-file-excel-o"> Export Excel</i></a>
        </div>
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-striped table-bordered assets"  style="width: 100%">
                    <thead>
                    <tr>
                        <th>No.</th>
                        <th>Asset</th>
                        <th>Assigned To</th>
                        <th>status</th>
                        <th>Date</th>

                    </tr>
                    </thead>
                    <tbody>

                    <?php foreach ($assets_maintenance as $asset) {?>
                        <tr>
                            <td><?php echo $asset->id?></td>
                            <td><?php echo $asset->sage_item_id?></td>
                            <td><?php echo $asset->username?></td>
                            <td><?php echo $asset->status == 0 ? '<span class="label label-warning">Not Performed</span>' : '<span class="label label-success">Performed</span>'?></td>
                            <td><?php echo $asset->created_at?></td>
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
        $('.assets').DataTable();
    } );
</script>


