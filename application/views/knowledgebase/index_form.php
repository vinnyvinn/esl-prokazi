<?php echo form_open('"id" = "create-parts-form", "class" = "general-form", "role" = "form"'); ?>
<div class="modal-body clearfix">
    <div class="panel panel-default">
        <div class="panel-heading" style="margin-top: -8px">Support Entries Report

            <?php
            if ($reports) {
                echo anchor(get_uri("knowledge_base/print_form/" . $dates['from'] . '/' . $dates['to']), "<i class='fa fa-print'></i> " . lang('print_report'), array("class" => "btn btn-info btn-sm pull-right rq", "title" => lang('print_report')));
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
                        <th>Type</th>
                        <th>solution</th>
                        <th>Hits</th>
                        <th>Date</th>


                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($reports as $r) { ?>
                        <tr>

                            <td><?php echo $r->id ?></td>
                            <td><?php echo $r->title ?></td>
                            <td><?php echo $r->name ?></td>
                            <td><?php echo $r->solution ?></td>
                            <td><?php echo $r->hits ?></td>
                            <td><?php echo $r->created_at ?></td>
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


