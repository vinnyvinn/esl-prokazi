 <div class="panel panel-default">
  <div class="panel-heading">Sage Assets
    <!-- Button trigger modal -->

    <button class="btn btn-primary btn-sm pull-right" data-toggle="modal" data-target="#myAssetModal">
      Add new Inventory Asset
    </button>
    <button class="btn btn-primary btn-sm pull-right" id="newmenu">
     Sage assets
   </button>
</div>

<div class="panel-body">
 <div class="row">
  <div class="col-sm-12">
    <table class="table table-striped table-bordered" id="jt" style="width: 100%">
     <thead>
       <tr>
        
         <th>Asset NO</th>
         <th>Card #</th>
         <th>Title</th>
         <th>Model NO</th>
         <th>Serial NO</th>
         <th>Location</th>
         <th>Category</th>
         <th>Custodian</th>
         <th>Department</th>
         <th>Purchase date</th>
         <th>Purchase cost</th>
         <th>Supplier</th>
         <th>Actions</th>
         
       </tr>
     </thead> 
     <tbody>
  
     <?php foreach ($assets as $asset) {?>
           
         <tr>
         <td><?php echo $asset->idAssetNo?></td>
         <td><?php echo $asset->card_no?></td>
         <td><?php echo $asset->cAssetDesc?></td>
         <td><?php echo $asset->model_no?></td>
         <td><?php echo $asset->serial_no?></td>
         <td><?php echo $asset->location?></td>
         <td><?php echo $asset->category?></td>
         <td><?php echo $asset->custodian?></td>
         <td><?php echo $asset->department?></td>
         <td><?php echo $asset->purchase_date?></td>
         <td><?php echo $asset->purchase_cost?></td>
         <td><?php echo $asset->supplier?></td>
         <td></td>

       </tr>
       <?php }?>
     </tbody>     
   </table>

 </div>
</div>
</div>

<link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/js/datatable/css/dataTables.bootstrap.min.css">

<script type="text/javascript">
  $(document).ready(function() {
    $('#jt').DataTable();
  } );

$('#newmenu').click(function() { 
    document.location = '<?php echo site_url('preventive');?>';
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
            <div class="col-sm-4">
              <div class="form-group">
                <label for="asset_no">Asset No</label>
                <input type="text" name="asset_no" class="form-control" placeholder="Asset No">
              </div>
              <div class="form-group">
                <label for="card_no">card No</label>
                <input type="text" name="card_no" class="form-control" placeholder="Card No">
              </div>
              <div class="form-group">
                <label for="title">Title</label>
                <input type="text" name="title" class="form-control" placeholder="Title">
              </div>
              <div class="form-group">
                <label for="Purchase Date">Purchase Date</label>
                <input type="text" name="purchase_date" id="purchase_date" class="form-control" placeholder="Purchase Date">
              </div>
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label for="model_no">Model No</label>
                <input type="text" name="model_no" class="form-control" placeholder="Model No">
              </div>
              <div class="form-group">
                <label for="serial_no">Serial No</label>
                <input type="text" name="serial_no" class="form-control" placeholder="Serial No">
              </div>
              <div class="form-group">
                <label for="location">Location</label>
                <input type="text" name="location" class="form-control" placeholder="Location">
              </div>
              <div class="form-group">
                <label for="Purchase Cost">Purchase Cost</label>
                <input type="text" name="purchase_cost" class="form-control" placeholder="Purchase Cost">
              </div>
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label for="category">Category</label>
                <input type="text" name="category" class="form-control" placeholder="Category No">
              </div>
              <div class="form-group">
                <label for="custodian">Custodian</label>
                <input type="text" name="custodian" class="form-control" placeholder="Custodian">
              </div>
              <div class="form-group">
                <label for="Department">Department</label>
                <input type="text" name="department" class="form-control" placeholder="Department">
              </div>
              <div class="form-group">
                <label for="Supplier">Supplier</label>
                <input type="text" name="supplier" class="form-control" placeholder="Supplier">
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

<script type="text/javascript">
   setDatePicker('#purchase_date');
</script>