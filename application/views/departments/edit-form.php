<div class="panel panel-default">
	<div class="panel panel-heading">Modify Department</div>
	<div class="panel panel-body">
		<form action="<?php echo base_url('departments/save_updated');?>" method="POST">
            <input type="hidden" name="id" value="<?php echo $department->id?>">
    <div class="row">
        <div class="col-md-12">
    	  	<div class="form-group">
    		<label for="name">Department</label>
    		<input type="text" class="form-control" name="name" placeholder="Department" id="name" value="<?php echo $department->name?>">
    	</div>
    	<button class="btn btn-primary btn-block">Save Department</button>
    </div>
</div>
</form>
	</div>
</div>