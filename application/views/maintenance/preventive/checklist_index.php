<?php echo form_open('"id" = "create-parts-form", "class" = "general-form", "role" = "form"'); ?>
<div class="modal-body clearfix">
    <div class="panel panel-default">
        <div class="panel-heading" style="margin-top: -8px">Checklists Report
            <a href="<?php echo base_url('followups/print_report/'.$dates['from'].'/'.$dates['to']);?>" class="btn btn-info btn-sm pull-right"><i class="fa fa-file-pdf-o"></i> Export Pdf</a>
            <a href="<?php echo base_url('followups/extract_checklist/'.$dates['from'].'/'.$dates['to']);?>" class="btn btn-info btn-sm pull-right walla"><i class="fa fa-file-excel-o"></i> Export Excel</a>
        </div>
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-sm-12">

                <table class="table table-striped table-bordered" id="jt" style="width: 100%">
                    <thead>
                    <tr>
                        <th>No.</th>
                        <th>Vehicle</th>
                        <th>Mileage</th>
                        <th>Date</th>

                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($checklists as  $checklist) {?>

                        <tr>
                            <td>
                                <?php echo $checklist->id;?>
                            </td>
                            <td><?php echo $checklist->code;?>"</td>
                            <td><?php echo $checklist->mileage .' '. $checklist->measurement;?></td>
                            <td><?php echo $checklist->date;?></td>



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
