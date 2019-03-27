<div class="panel-default">
    <div class="panel panel-heading">Filter Knowledgebase</div>
    <div class="panel panel-body">
        <form action="<?php echo base_url('knowledge_base/reports_index');?>" method="post">
        <div class="form-group">
            <label for="type">Knowlegdebase Type</label>
            <div class="form-group">
                <select name="type" id="type" class="form-control" style="width: 50%">
                    <option value="0">All</option>
                    <?php
                    foreach ($details as $k_b) {
                        echo "<option value=". $k_b->id . ">" . ucfirst($k_b->name) . "</option>";
                    }
                    ?>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="period">Start Date</label>
            <input type="text" class="form-control" name="start_date" id="start_date" style="width: 50%">
        </div>
        <div class="form-group">
            <label for="period">End Date</label>
            <input type="text" class="form-control" name="end_date" id="end_date" style="width: 50%">
        </div>
        <button class="btn btn-primary bnt-sm" type="submit"><i class="fa fa-search-plus"> Search</i></button>
        </form>
    </div>
</div>

<script>
    setDatePicker('#start_date,#end_date');
</script>
