<div class="panel panel-default">
    <div class="panel panel-heading">Choose Date</div>'

    <div class="panel panel-body">
        <form action="<?php echo base_url('checklists/get_details');?>" method="POST">
        <div class="form-group">
            <label for="From">From</label>
            <input type="text" class="form-control" name="start_date" id="start_date" style="width: 50%" required>
        </div>
        <div class="form-group">
            <label for="To">To</label>
            <input type="text" class="form-control" name="end_date" id="end_date" style="width: 50%" required>
        </div>

            <div class="form-group">
                <button class="btn btn-primary" type="submit">Search</button>
            </div>

        </form>
    </div>
</div>

<script>
    setDatePicker('#start_date,#end_date');
</script>

