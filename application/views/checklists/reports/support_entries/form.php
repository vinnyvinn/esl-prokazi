<div class="panel panel-default">
    <div class="panel panel-heading">Choose Date</div>'

    <div class="panel panel-body">
        <form action="<?php echo base_url('ict_reports/entries_details');?>" method="POST">
            <div class="form-group">
                <label for="ticket_type">Ticket Type</label>
                <select name="ticket" id="ticket" class="form-control" style="width: 50%">
                    <option value="0">All</option>
                    <?php
                    foreach ($ticket_types as $ticket) {
                        echo "<option value=". $ticket->id . ">" . ucfirst($ticket->title) . "</option>";
                    }
                    ?>
                </select>
            </div>
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

    $(document).ready(function () {
        $('#itemSelected').on('change',function () {
            if(this.value == 'date'){
                $('.ticket').hide();
            }
            else if(this.value == 'ticket'){
                $('.ticket').hide();
            }
        })
    })
</script>

