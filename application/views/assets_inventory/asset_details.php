<div class="panel panel-default">
    <div class="panel panel-default">
        <div class="panel panel-heading">Asset Details</div>
        <div class="panel panel-body">
            <div class="row">

                    <input type="hidden" value="<?php echo $assets->id?>" name="id">
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
                            <label for="Purchase Date">Purchase Cost</label>
                            <input type="text" name="purchase_date" id="purchase_date" class="form-control" value="<?php echo $assets->purchase_cost?>" disabled>
                        </div>
                        <div class="form-group">
                            <label for="Department">Department</label>
                            <input type="text" name="department" class="form-control" value="<?php echo $assets->department?>" disabled>
                        </div>

                        <div class="form-group">
                            <label for="custodian">Custodian</label>

                            <input type="text" name="custodian" class="form-control" value="<?php echo $assets->username?>" disabled>

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
                            <input type="text" name="category" class="form-control" value="<?php echo $assets->category?>" disabled>
                        </div>

                    </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="model_no">Model No</label>
                        <input type="text" name="model_no" class="form-control" value="<?php echo $assets->model_no?>" disabled>
                    </div>
                    <div class="form-group">
                        <label for="title">Description</label>
                        <textarea class="form-control" name="title" id="title" rows="5" cols="5" disabled><?php echo $assets->title?></textarea>

                    </div>
                    <div class="form-group">
                            <label for="custodian">Supplier</label>

                            <input type="text" name="supplier" class="form-control" value="<?php echo $assets->supplier?>" disabled>

                        </div>
                </div>

            </div>
        </div>
    </div>
</div>

<script>
    setDatePicker('#purchase_date');
    $('#supplier,#custodian').select2();
</script>