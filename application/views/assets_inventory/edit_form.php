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
                <select class="form-control" name="department" id="department" value="<?php echo $assets->designation?>">
                <option value="<?php echo $assets->dept_id?>"><?php echo $assets->designation?></option>
                <?php
                foreach ($departments as $dept) {
                  echo "<option value=". $dept->id . ">" . ucfirst($dept->name) ."</option>";
                }
                ?>
              </select>
            </div>
           
            <div class="form-group">
              <label for="custodian">Custodian</label>
                  <select class="form-control" name="custodian" id="custodian">
                  <option value="<?php echo $assets->custodian?>"><?php echo $assets->username?></option>
                <?php
                foreach ($users as $user) {
                  echo "<option value=". $user->id . ">" . ucfirst($user->first_name) .' '.ucfirst($user->last_name) ."</option>";
                }
                ?>
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
              
              <select class="form-control" name="supplier" id="supplier">
                  <option value="<?php echo $assets->supplier?>"><?php echo $assets->supplier?></option>
                <?php
                foreach ($vendors as $vendor) {
                  echo "<option value=\"". $vendor->Name . "\">" . ucfirst($vendor->Name) . "</option>";
                }
                ?>
              </select>
        
                
              </div>
              <div class="form-group">
              <label for="model_no">Model No</label>
              <input type="text" name="model_no" class="form-control" value="<?php echo $assets->model_no?>">
            </div>
           <div class="form-group">
              <label for="title">Description</label>
              <textarea class="form-control" name="title" id="title" rows="5" cols="5"><?php echo $assets->title?></textarea>
            
            </div>
          </div>

           <div class="col-sm-4">
            
            <div class="form-group">
              <label for="serial_no">Serial No</label>
              <input type="text" name="serial_no" class="form-control" value="<?php echo $assets->serial_no?>">

            </div>
            <div class="form-group">
              <label for="location">Location</label>
                <select class="form-control" name="location" id="location">
                    <option value="<?php echo $assets->location?>"><?php echo $assets->location?></option>
                    <?php
                    foreach ($locations as $location) {
                        echo "<option value=\"". $location->cLocationDesc . "\">" . ucfirst($location->cLocationDesc) . "</option>";
                    }
                    ?>
                </select>

            </div>
             <div class="form-group">
              <label for="category">Category</label>
              <input type="text" name="category" class="form-control" value="<?php echo $assets->category?>">
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
