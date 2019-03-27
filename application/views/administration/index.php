<div id="page-content" class="p20 row">
    <div class="col-sm-3 col-lg-2">
        <?php
        $tab_view['active_tab'] = "Adminisration";
        $this->load->view("settings/tabs", $tab_view);
        ?>
    </div>

    <div class="col-sm-9 col-lg-10">
<div class="panel panel-default">
            <div class="panel-body">
                <div class="panel panel-heading">
                    <h4>Team Members' Warehouse Locations</h4>
                </div>
                <div class="table-responsive">
                    <table class="table table-striped table-bordered" id="jt" style="width: 100%">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Team Meamber</th>
                            <th>Location</th>
                            <th>Actions</th>

                        </tr>
                        </thead>
                        <tbody>


                        <?php foreach ($all_details as $user)  {?>
                            <tr>

                                <td><?php echo $user->id;?></td>
                                <td><a href="<?php echo base_url('administration/view_form/'.$user->id)?>" class="label label-info"><?php echo $user->username;?></i></a></td>
                                <td><?php echo $user->location_id ?: 'Not Set';?></td>

                                <td></td>

                            </tr>
                        <?php }?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


    <script type="text/javascript">
        $(document).ready(function() {
            $('#jt').DataTable();
        } );

    </script>

