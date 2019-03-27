<div class="panel panel-default">
    <div class="panel panel-body">
        <div class="panel panel-heading">
            <h4>Inventory Requisitions</h4>
            <div class="col-xs-4 col-xs-offset-10">
                <?php
                echo modal_anchor(get_uri("inventory_requisitions/modal_form"), "<i class='fa fa-plus-circle'></i> " . "Request", array("class" => "btn btn-default item", "title" => "Request Inventory"));
                ?>
            </div>
        </div>
            <table class="table table-striped table-bordered table-responsive" id="jt" style="width: 100%">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Stock Item</th>
                    <th>Requested </th>
                    <th>Project</th>
                     <th>Warehouse</th>
                    <th>Requested by</th>
                    <th>Requested on</th>
                    <th>Status</th>
                    <th>Actions</th>
                   </tr>
                </thead>
                <tbody>
                <?php foreach ($all_data as $item) { ?>
                    <tr>

                        <td><?php echo $item->id; ?></td>
                        <td><?php echo $item->item_name; ?></td>
                        <td><?php echo $item->item_quantity; ?></td>
                        <td><?php echo $item->projecto; ?></td>
                        <td><?php echo $item->location_id; ?></td>
                        <td><?php echo $item->username; ?></td>
                        <td><?php echo $item->created_at;?></td>
                        <td>
                            <?php

                            if($item->status == 'Pending'){?>
                             <div class="label label-info">Pending</div>
                            <?php }?>
                            <?php
                            if($item->status == 'Approved'){?>
                                <div class="label label-success">Approved</div>
                            <?php }?>
                            <?php
                            if($item->status == 'Disapproved'){?>
                                <div class="label label-danger">Disapproved</div>
                            <?php }?>
                            <?php
                            if($item->status == 'Awaiting Stock'){?>
                                <div class="label label-warning">Awaiting Stock</div>
                            <?php } ?>

                        <td>

                            <?php
                            if($item->status != 'Approved'){

                                if (get_array_value($this->login_user->permissions,"can_approve_inventory") ==1) {?>
                            <a href="<?php echo base_url('inventory_requisitions/approve/'.$item->id);?>" class="href btn-success btn-xs"><i class="fa fa-check-circle"></i></a>
                            <?php } if(get_array_value($this->login_user->permissions,"can_disapprove_inventory") ==1) {?>
                            <a href="<?php echo base_url('inventory_requisitions/disapprove/'.$item->id);?>" class="href btn-danger btn-xs"><i class="fa fa-times-circle"></i></a>
                          <?php } ?>
                        </td>
                    </tr>
                <?php } }?>
                </tbody>
            </table>
        </div>
    </div>

<link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/js/datatable/css/dataTables.bootstrap.min.css">

<style>
    .item{
        margin-top: -28px;
    }
</style>
<script type="text/javascript">
    $(document).ready(function () {
        $('#jt').DataTable();
    });

</script>

