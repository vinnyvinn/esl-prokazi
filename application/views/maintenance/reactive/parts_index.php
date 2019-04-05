<?php echo form_open('"id" = "create-parts-form", "class" = "general-form", "role" = "form"'); ?>
<div class="modal-body clearfix">
    <div class="panel panel-default">
        <div class="panel-heading" style="margin-top: -8px"> Issuance Listing Report

            <?php
            if($parts) {
                echo anchor(get_uri("parts_requisition/print_items"), "<i class='fa fa-file-pdf-o'></i> " . 'Export Pdf', array("class" => "btn btn-info btn-sm pull-right rq", "title" => lang('print_report')));
                echo anchor(get_uri("parts_requisition/extract_items"), "<i class='fa fa-file-excel-o'></i> " . 'Export Excel', array("class" => "btn btn-info btn-sm pull-right rq walla", "title" => lang('print_report'))); }?>
        </div>
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-striped table-bordered" id="jt" style="width: 100%">
                    <thead>
                    <tr>
                        <th>No.</th>
                        <th>Requisition #</th>
                        <th>Code</th>
                        <th>Item name</th>
                        <th>Quantity</th>
                        <th>Description</th>
                        <th>Total amount</th>
                        <th>Date</th>

                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($parts as $p) {?>
                        <tr>
                            <td><?php echo $p->id?></td>
                            <td><?php echo $p->requisition_no?></td>
                            <td><?php echo $p->card_no?></td>
                            <td><?php echo $p->stock_name?></td>
                            <td><?php echo $p->qnty_out?></td>
                            <td><?php echo $p->description?></td>
                            <td><?php echo number_format($p->total,2)?></td>
                            <td><?php echo nice_date($p->created, 'Y-m-d')?></td>

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


