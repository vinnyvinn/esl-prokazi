<div class="panel panel-default">
   <ul class="nav nav-pills">
  <li><a href="<?php echo base_url('inventory_assets');?>" class="btn btn-primary">Inventory Assets</a></li>
  <li><a href="<?php echo base_url('return_assets/issues')?>" class="btn btn-primary"><b>Issue Asset</b></a></li>
  <li><a href="<?php echo base_url('return_assets');?>" class="btn btn-primary"><b>Return Asset</b></a></li>

</ul>

 

    <div id='content' class="tab-content">
      <div class="tab-pane active" id="home">
        <div class="panel panel-heading" style="margin: 0;margin-top: -25px">
       <button class="btn btn-primary btn-sm pull-right" data-toggle="modal" data-target="#myAssetModal" style="margin-top: -20px;margin-left: 2px">
      Add new Inventory Asset
    </button>
    <button class="btn btn-info btn-sm pull-right" id="newmenu" style="margin-top: -20px">
      Import Sage assets
    </button>
    </div>
  <div class="panel-body">
   
   <div class="row">
    <div class="col-sm-12">
      <table class="table table-striped table-bordered" id="jt" style="width: 100%">
       <thead>
         <tr>

           <th>#</th>
           <th>Code</th>
           <th>Title</th>
           <th>Model NO</th>
           <th>Serial NO</th>
           <th>Category</th>
           <th>Custodian</th>
           <th>Location</th>
           <th>Actions</th>

         </tr>
       </thead> 
       <tbody>

         <?php foreach ($assets as $asset) {?>


           <tr>
             <td><?php echo $asset->id?></td>
             <td><?php echo $asset->card_no?></td>
             <td><?php echo $asset->title?></td>
             <td><?php echo $asset->model_no?></td>
             <td><?php echo $asset->serial_no?></td>
             <td><?php echo $asset->category ? $asset->category : 'ICT ASSETS'?></td>
               <td><?php echo $asset->username?></td>
               <td><?php echo $asset->location?></td>
             <td>
                <a href="<?php echo base_url('inventory_assets/edit/'.$asset->id);?>" data-toggle="tooltip" data-placement="bottom" title="Modify Asset" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></a>

             </td>
          </tr>
         <?php }?>
       </tbody>     
     </table>

   </div>
 </div>
</div>

</div>
      <div class="tab-pane" id="profile">
       <a href="<?php echo base_url('return_assets') ;?>">weqwed</a>
      </div>
     
    </div> 


</div>

<link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/js/datatable/css/dataTables.bootstrap.min.css">

<script type="text/javascript">
  $(document).ready(function() {
    $('#jt').DataTable();
    $('[data-toggle="tooltip"]').tooltip();
  } );

  $('#newmenu').click(function() { 
    document.location = '<?php echo site_url('inventory_assets/import_assets');?>';
  } );
</script>


<!-- Modal -->
<div class="modal fade" id="myAssetModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Inventory Assets Form</h4>
      </div>
      <div class="modal-body">
        <form method="post" action="<?php echo base_url('inventory_assets/add_asset');?>">
          <div class="row">
            <div class="col-sm-6">
             <div class="form-group">
              <label for="Code">Code No</label>
              <input type="text" name="card_no" class="form-control" placeholder="Code No" required>
            </div>
            
            <div class="form-group">
              <label for="Purchase Date">Purchase Date</label>
              <input type="text" name="purchase_date" id="purchase_date" class="form-control" placeholder="Purchase Date" required>
            </div>
            <div class="form-group">
              <label for="Department">Department</label>
              <input type="text" name="department" class="form-control" placeholder="Department" required>
            </div>
            <div class="form-group">
              <label for="Supplier">Supplier</label>
              <select class="form-control" name="supplier" id="supplier">
                <option>-- SELECT SUPPLIER --</option>
                <?php
                foreach ($vendors as $vendor) {
                  echo "<option value=\"". $vendor->Name . "\">" . ucfirst($vendor->Name) . "</option>";
                }
                ?>
              </select>
              <br>
           <div class="form-group">
              <label for="title">Description</label>
              <textarea class="form-control" name="title" id="title" rows="5" cols="5"></textarea>
            
            </div>
            </div>
            
          </div>
          <div class="col-sm-6">
            <div class="form-group">
              <label for="model_no">Model No</label>
              <input type="text" name="model_no" class="form-control" placeholder="Model No" required>
            </div>
            <div class="form-group">
              <label for="serial_no">Serial No</label>
              <input type="text" name="serial_no" class="form-control" placeholder="Serial No" required>
            </div>
            <div class="form-group">
              <label for="location">Location</label>
                <select class="form-control" name="location" id="location" required>
                    <?php
                    foreach ($locations as $location) {
                        echo "<option value=\"". $location->cLocationDesc . "\">" . ucfirst($location->cLocationDesc) . "</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="form-group">
              <label for="Purchase Cost">Purchase Cost</label>
              <input type="number" name="purchase_cost" class="form-control" step="0.01" placeholder="Purchase Cost" required>
            </div>
             <div class="form-group">
              <label for="category">Category</label>
              <input type="text" name="category" class="form-control" placeholder="Category No" required>
            </div>
            <div class="form-group">
              <label for="custodian">Custodian</label>
              <select class="form-control" name="custodian" id="custodian" required>
                <option>-- SELECT CUSTODIAN --</option>
                <?php
                foreach ($users as $user) {
                  echo "<option value=". $user->id . ">" . ucfirst($user->first_name) .' '.ucfirst($user->first_name). "</option>";
                }
                ?>
              </select>
             
            </div>
          </div>
          

        </div>
        <div class="form-group text-center">
         <input type="submit" name="submit" value="Create" class="btn btn-primary text-center"> 
       </div>

     </form>
   </div>

 </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/js/datatable/css/dataTables.bootstrap.min.css">
<script>

    $(function () {
        $('#jt').dataTable();



    })
    setDatePicker('#purchase_date');
    $('#asset_id,#custodian,#supplier').select2();
</script>
