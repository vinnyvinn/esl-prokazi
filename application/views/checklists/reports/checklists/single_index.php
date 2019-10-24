<div class="panel panel-default">
    <div class="panel-panel-heading"></div>
    <div class="panel panel-body">
        <div class="row">
            <div class="col-md-6">
        <div class="form-group">
            <label for="ref_no">Ref No</label>
            <input type="text" class="form-control" name="ref_no" value="<?php echo $checklist->ref_no;?>" disabled>
        </div>
        <div class="form-group">
            <label for="perfomed_by">Solved By</label>
            <input type="text" class="form-control" name="perfomed_by" value="<?php echo $checklist->username;?>" disabled>
        </div>
            </div>
            <div class="col-md-6">
        <div class="form-group">
            <label for="status">Status</label>
            <input type="text" class="form-control" name="status" value="<?php echo $checklist->state;?>" disabled>
        </div>
        <div class="form-group">
            <label for="created_at">Date</label>
            <input type="text" class="form-control" name="created_at" value="<?php echo $checklist->performed_on;?>" disabled>
        </div>
            </div>
    </div>
</div>
</div>