<?php
$this->load->view('includes/get_time');
?>

<div id="page-content" class="p20 row">

    <div class="col-sm-3 col-lg-2">
        <?php
        $tab_view['active_tab'] = "email";
        $this->load->view("monitoring/tabs", $tab_view);
        ?>
    </div>

    <div class="col-sm-9 col-lg-10">
        <div class="panel panel-default">
            <div class="panel-body">
           <div class="panel panel-heading">
                <button class="btn btn-primary btn-sm pull-right" data-toggle="modal" data-target="#emailModal">
                    Add new Email Server
                </button>

            </div>
            <div class="table-responsive">
                <table class="table table-striped table-bordered" id="jt" style="width: 100%">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Location</th>
                        <th>Start Date</th>
                        <th>Start Time</th>
                        <th>End Date</th>
                        <th>End Time</th>
                        <th>Duration</th>
                        <th>Actions</th>

                    </tr>
                    </thead>
                    <tbody>


             <?php foreach ($emails as $email)  {?>
                    <tr>

                        <td><?php echo $email->id;?></td>
                        <td><a href="<?php echo base_url('monitoring_outages/view_email/'.$email->id)?>" class="btn btn-success btn-xs"><?php echo $email->location;?></i></a></td>
                        <td><?php echo $email->start_date;?></td>
                        <td><?php echo $email->start_time;?></td>
                        <td><?php echo $email->end_date;?></td>
                        <td><?php echo $email->end_time;?></td>
                        <td><?php $start_date=strtotime($email->start_date);
                            $start_time=strtotime( $email->start_time);
                            $end_date=strtotime($email->end_date);
                            $end_time=strtotime( $email->end_time);

                            echo secondsToTime((($end_date+$end_time)-($start_time+$start_date)));?>
                        </td>
                        <td></td>

                    </tr>
                   <?php }?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </div>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#jt').DataTable();
        } );

           </script>

    <!-- Modal -->
    <div class="modal fade" id="emailModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Email Server Form</h4>
                </div>
                <div class="modal-body">
                    <form method="post" action="<?php echo base_url('monitoring_outages/add_email');?>">
                        <div class="row">
                            <div class="col-sm-6">

                                <div class="form-group">
                                    <label for="start_date">Start Date</label>
                                    <input type="text" name="start_date" class="form-control" id="start_date" placeholder="Start date" required>
                                </div>
                                <div class="form-group">
                                    <label for="start_time">Start Time</label>
                                    <input type="text" name="start_time" class="form-control" id="start_time" placeholder="Start Time" required>
                                </div>
                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <textarea name="description" id="description" cols="3" rows="3" class="form-control" required></textarea>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="end_date">End Date</label>
                                    <input type="text" name="end_date" class="form-control" id="end_date" placeholder="End Date" required>
                                </div>
                                <div class="form-group">
                                    <label for="end_time">End Time</label>
                                    <input type="text" name="end_time" id="end_time" class="form-control" id="end_time" placeholder="End Time" required>
                                </div>
                                <div class="form-group">
                                    <label for="location">Location</label>
                                    <input type="text" name="location" class="form-control" id="location" placeholder="Location" required>
                                </div>




                        </div>
                          <div class="text-left">
                              <div class="form-group">
                                <input type="submit" name="submit" value="Create Mail Server" class="btn btn-primary">
                            </div>
                          </div>

                    </form>
                </div>

            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <script>
        setDatePicker('#start_date,#end_date');
        $('#start_time,#end_time').timepicker();
    </script>