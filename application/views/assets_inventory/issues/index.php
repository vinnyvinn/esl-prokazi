<div class="panel panel-default">
    <div class="panel panel-default">
  
 <ul class="nav nav-pills">
  <li><a href="<?php echo base_url('inventory_assets');?>" class="btn btn-primary">Inventory Assets</a></li>
  <li><a href="<?php echo base_url('return_assets/issues')?>" class="btn btn-primary"><b>Issue Asset</b></a></li>
  <li><a href="<?php echo base_url('return_assets');?>" class="btn btn-primary"><b>Return Asset</b></a></li>

</ul>
       
        <div class="panel panel-body">
             <div class="panel panel-heading" style="margin-top: -20px"><h3>Issued Assets</h3>
            <a href="#" class="btn btn-primary pull-right"  data-toggle="modal" data-target="#myModal" style="margin-top: -20px"> <i class="fa fa-plus"> Issue Asset</i></a>
        </div>
            <div class="row">

                <table class="table-bordered table-striped dataTable" id="walla">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Code</th>
                        <th>Title</th>
                        <th>Model No</th>
                        <th>Custodian</th>
                        <th>Date</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($assets as $asset) {?>
                        <tr>

                            <td><?php echo $asset->r_id?></td>
                            <td><?php echo $asset->card_no?></td>
                            <td><?php echo $asset->title?></td>
                            <td><?php echo $asset->model_no?></td>
                            <td><?php echo $asset->user_name?></td>
                            <td><?php echo date('d-m-Y',strtotime($asset->created_at))?></td>
                            <td>
                 <?php
                   
                  if ($asset->state ==1) {?>
                  <span class="label label-success">Accepted</span>

                  
                   <?php } elseif ($asset->state ==2) {?>
                     <span class="label label-danger">Rejected</span>

                      <?php } else { ?>

                        <span class="label label-warning">Pending</span>
                 <?php };?>
               </td>
               <td>
                           <?php 
                     
                    if(!$asset->state ==1 || !$asset->state ==2) {?>
                 <div class="text-center">
                    <div class="form-group">
                        <a href="<?php echo base_url('inventory_assets/accept_asset/'.$asset->r_id);?>" class="btn btn-success btn-sm"><i  title="accept" class="fa fa-check"></i></a>
                        <a href="<?php echo base_url('inventory_assets/reject_asset/'.$asset->r_id);?>" class="btn btn-danger btn-sm"><i  title="reject" class="fa fa-times"></i></a>
                    </div>
                 </div>
              <?php } 
                 if ($asset->state==1) {?>
                  <a href="<?php echo base_url('return_assets/view_form/'.$asset->r_id);?>" data-toggle="tooltip" data-placement="bottom" title="View Form" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-eye-open"></a>
                <?php }
                ?>

                </td>
                   </tr>
                    <?php }?>
                    </tbody>

                </table>
            </div>
        </div>
  


<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Issue Asset Form</h4>
            </div>
            <form action="<?php echo base_url('return_assets/save')?>" method="post">
                <div class="modal-body">
                    <div class="row">

                        <div class="col-md-10 col-md-offset-1">

                            <div class="form-group">
                                <label for="users_id">Custodian</label>
                                <select name="user_id" id="custodian" class="form-control" required>

                                    <?php foreach ($users as $user) {?>
                                        <option value="<?php echo $user->id;?>"><?php echo $user->username?></option>
                                    <?php }?>
                                </select>

                            </div>

                            <div class="form-group">
                                <label for="asset_id">Asset</label>

                                <select name="asset_id" id="asset_id" class="form-control select2" required>
                                    <?php foreach ($all_assets as $asset) {?>
                                    <option value="<?php echo $asset->id?>"><?php echo $asset->card_no?></option>
                                    <?php }?>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" class="btn btn-primary" value="Submit">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>

    </div>
</div>

<link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/js/datatable/css/dataTables.bootstrap.min.css">
<script>

    $(function () {
        $('#walla').dataTable();



    })
    setDatePicker('#purchase_date');
    $('#asset_id,#custodian').select2();
</script>
