<?php echo form_open('"id" = "create-parts-form", "class" = "general-form", "role" = "form"'); ?>

<div class="modal-body clearfix">
    <div class="panel panel-default">
        <div class="panel-heading" style="margin-top: -8px">Inventory List
            <a href="<?php echo base_url('preventive/print_inventory');?>" class="btn btn-info btn-sm pull-right"><i class="fa fa-file-pdf-o"> Export Pdf</i></a>
            <a href="<?php echo base_url('preventive/extract_inventory');?>" class="btn btn-info btn-sm pull-right walla"><i class="fa fa-file-excel-o"> Export Excel</i></a>
        </div>
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-striped table-bordered" id="inventory" style="width: 100%">
                    <thead>
                    <tr>
                        <th>No.</th>
                        <th>Code</th>
                        <th>Description</th>


                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($inventory_listing as $inventory) {?>
                        <tr>
                            <td><?php echo $inventory->id?></td>
                            <td><?php echo $inventory->code?></td>
                            <td><?php echo $inventory->description?></td>
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
        $('#inventory').DataTable();
    } );
</script>


