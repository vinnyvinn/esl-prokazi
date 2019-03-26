<div class="panel panel-default">
    <div class="panel panel-heading">Choose Period</div>
    <div class="panel panel-body">
        <form action="<?php echo base_url('maintenance_report/jobcard_reports');?>" method="post">
            <div class="form-group">
                <label for="start_date">Start Date</label>
                <input type="text" class="form-control" name="start_date" id="start_date" style="width: 50%">
            </div>
            <div class="form-group">
                <label for="end_date">End Date</label>
                <input type="text" class="form-control" name="end_date" id="end_date" style="width: 50%">
            </div>
            <button class="btn-primary btn-sm" type="submit"><i class="fa fa-search-plus"></i> Search</button>
        </form>
    </div>
</div>

<script>
    setDatePicker('#start_date,#end_date')
</script>
