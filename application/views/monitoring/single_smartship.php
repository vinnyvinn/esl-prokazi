<?php
$this->load->view('includes/get_time');
?>
<div id="page-content" class="p20 row">

    <div class="col-sm-3 col-lg-2">
        <?php
        $tab_view['active_tab'] = "smartship";
        $this->load->view("monitoring/tabs", $tab_view);
        ?>
    </div>

    <div class="panel panel-default">
        <div class="panel panel-heading">Smartship Server Details</div>
        <div class="panel panel-body">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="location">Location</label>
                        <input type="text" name="location" class="form-control" value="<?php echo $smart->location?>" disabled>
                    </div>
                    <div class="form-group">
                        <label for="start_date">Start Date</label>
                        <input type="text" name="start_date" class="form-control" value="<?php echo $smart->start_date?>" disabled>
                    </div>
                    <div class="form-group">
                        <label for="start_time">Start Time</label>
                        <input type="text" name="start_time" class="form-control" value="<?php echo $smart->start_time?>" disabled>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="end_date">End Date</label>
                        <input type="text" name="end_date" class="form-control" value="<?php echo $smart->end_date?>" disabled>
                    </div>
                    <div class="form-group">
                        <label for="end_time">End Time</label>
                        <input type="text" name="end_time" class="form-control" value="<?php echo $smart->end_time?>" disabled>
                    </div>
                    <div class="form-group">
                        <label for="duration">Duration</label>
                        <input type="text" name="duration" class="form-control" value="<?php
                        $start_date=strtotime($smart->start_date);
                        $start_time=strtotime($smart->start_time);
                        $end_date=strtotime($smart->end_date);
                        $end_time=strtotime( $smart->end_time);

                        echo secondsToTime((($end_date+$end_time)-($start_time+$start_date)))
                        ?>" disabled>
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea name="" id="description" cols="6" rows="6" class="form-control" disabled><?php echo $smart->description?></textarea>

                    </div>
                </div>
            </div>
        </div>
    </div>