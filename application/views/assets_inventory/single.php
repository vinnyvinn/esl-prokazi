<div class="panel panel-default">
	<div class="panel panel-default">
		<div class="panel panel-heading">Asset #<?php echo $assets->id?> Details</div>
		<div class="panel panel-body">
			<div class="row">

            <div class="col-sm-4">
             <div class="form-group">
              <label for="Code">Code No</label>
              <input type="text" name="card_no" class="form-control" value="<?php echo $assets->card_no?>" disabled>
            </div>

            <div class="form-group">
              <label for="Purchase Date">Purchase Date</label>
              <input type="text" name="purchase_date" id="purchase_date" class="form-control" value="<?php echo $assets->purchase_date?>" disabled>
            </div>
            <div class="form-group">
              <label for="Department">Department</label>
              <input type="text" name="department" class="form-control" value="<?php echo $assets->department?>" disabled>
            </div>

            <div class="form-group">
              <label for="custodian">Custodian</label>
              <input class="form-control" name="custodian" id="custodian" value="<?php echo $user ? $user['first_name'].' '.$user['last_name'] : '';?>" disabled>

            </div>

          </div>
          <div class="col-sm-4">
          	 <div class="form-group">
              <label for="Supplier">Supplier</label>
              <input class="form-control" name="supplier" id="supplier" value="<?php echo $supplier?>" disabled>

              </div>
              <div class="form-group">
              <label for="model_no">Model No</label>
              <input type="text" name="model_no" class="form-control" value="<?php echo $assets->model_no?>" disabled>
            </div>
           <div class="form-group">
              <label for="title">Description</label>
              <textarea class="form-control" name="title" id="title" rows="5" cols="5" disabled><?php echo $assets->title?></textarea>

            </div>
          </div>

           <div class="col-sm-4">

            <div class="form-group">
              <label for="serial_no">Serial No</label>
              <input type="text" name="serial_no" class="form-control" value="<?php echo $assets->serial_no?>" disabled>
            </div>
            <div class="form-group">
              <label for="location">Location</label>
              <input type="text" name="location" class="form-control"  value="<?php echo $assets->location?>" disabled>
            </div>
            <div class="form-group">
              <label for="Purchase Cost">Purchase Cost</label>
              <input type="text" name="purchase_cost" class="form-control" value="<?php echo $assets->purchase_cost?>" disabled>
            </div>
             <div class="form-group">
              <label for="category">Category</label>
              <input type="text" name="category" class="form-control" value="<?php echo $assets->category ? $assets->category : 'ICT ASSETS'?>" disabled>
            </div>

          </div>


                   <?php if(!$assets->status ==1 || !$assets->status ==2) {?>
                 <div class="text-center">
                    <div class="form-group">
                        <a href="<?php echo base_url('inventory_assets/accept_asset/'.$assets->id);?>" class="btn btn-success btn-sm"><i data-toggle="tooltip" title="accept" class="fa fa-check"></i></a>
                        <a href="<?php echo base_url('inventory_assets/reject_asset/'.$assets->id);?>" class="btn btn-danger btn-sm"><i data-toggle="tooltip" title="reject" class="fa fa-times"></i></a>
                    </div>
                 </div>
                <?php }?>

        </div>
		</div>
	</div>
</div>


