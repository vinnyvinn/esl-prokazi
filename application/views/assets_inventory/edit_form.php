<div class="panel panel-default">
	<div class="panel panel-default">
		<div class="panel panel-heading">Edit Asset</div>
		<div class="panel panel-body">
			<div class="row">
        <form action="<?php echo base_url('inventory_assets/save_changes/'.$assets->id)?>" method="POST">
          <input type="hidden" value="<?php echo $assets->id?>" name="id">
            <div class="col-sm-4">
             <div class="form-group">
              <label for="Code">Code No</label>
              <input type="text" name="card_no" class="form-control" value="<?php echo $assets->card_no?>">
            </div>
            
              <div class="form-group">
              <label for="Department">Department</label>
                <select class="form-control" name="department" id="department" required>

                <?php
                foreach ($departments as $dept) {?>
                    <option value="<?php echo $dept->id;?>"<?php if($dept->id ==$assets->designation) echo 'selected="selected"';?>><?php echo  ucfirst($dept->name);?></option>;
                  <?php }?>
                  </select>
            </div>

            <div class="form-group">
              <label for="custodian">Custodian</label>
                  <select class="form-control" name="custodian" id="custodian">
                      <option value="">--Choose Custodian--</option>
                <?php
                 foreach ($users as $user) {?>
                 <option value="<?php echo $user->id;?>"<?php if($user->id ==$assets->custodian) echo 'selected="selected"';?>><?php echo  ucfirst($user->first_name) .' '.ucfirst($user->last_name);?></option>;

                 <?php }?>
              </select>
                              
            </div>
            <div class="form-group">
              <label for="cost">Cost</label>
              <input type="text" class="form-control" name="cost" value="<?php echo $assets->purchase_cost;?>" disabled> 
            </div>
          </div>
          <div class="col-sm-4">
          	 <div class="form-group">
              <label for="Supplier">Supplier</label>
                <select class="form-control" name="supplier" id="supplier" required>

                <?php
                    foreach ($vendors as $vendor) {?>
                     <option value="<?php echo $vendor->Name;?>"<?php if($vendor->Name ==$assets->supplier) echo 'selected="selected"';?>><?php echo  $vendor->Name;?></option>;
                 <?php }?>
              </select>
              </div>
              <div class="form-group">
              <label for="model_no">Model No</label>
              <input type="text" name="model_no" class="form-control" value="<?php echo $assets->model_no?>" required>
            </div>
           <div class="form-group">
              <label for="title">Description</label>
              <textarea class="form-control" name="title" id="title" rows="5" cols="5" required><?php echo $assets->title?></textarea>
            
            </div>
          </div>

           <div class="col-sm-4">
            
            <div class="form-group">
              <label for="serial_no">Serial No</label>
              <input type="text" name="serial_no" class="form-control" value="<?php echo $assets->serial_no?>" required>

            </div>
            <div class="form-group">
              <label for="location">Location</label>
                <select class="form-control" name="location" id="location" required>


                    <?php
                    foreach ($locations as $location) {?>
                         <option value="<?php echo $location->cLocationDesc;?>"<?php if($location->cLocationDesc ==$assets->location) echo 'selected="selected"';?>><?php echo  ucfirst($location->cLocationDesc);?></option>;

                    <?php }?>
                </select>

            </div>
             <div class="form-group">
              <label for="category">Category</label>
              <input type="text" name="category" class="form-control" value="<?php echo $assets->category?>" required>
            </div>
            <div class="form-group">
              <input type="submit" class="btn btn-primary" value="Update">
            </div>
          </div>
          </form>

        </div>
		</div>
	</div>
</div>

<script>
  setDatePicker('#purchase_date');
  $('#supplier,#custodian').select2();
</script>
