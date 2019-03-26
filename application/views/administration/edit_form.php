<div id="page-content" class="p20 row">
    <div class="col-sm-3 col-lg-2">
        <?php
        $tab_view['active_tab'] = "Adminisration";
        $this->load->view("settings/tabs", $tab_view);
        ?>
    </div>

    <div class="col-sm-9 col-lg-10">
<div class="panel panel-default">
    <div class="panel panel-heading">Update Team Member Location</div>
    <div class="panel panel-body">
        <form action="<?php echo base_url('administration/updatelocation');?>" method="post">
        <div class="form-group">
            <label for="username">Team Member</label>
            <select name="username" id="username" class="form-control">
                <?php

                foreach ($users as $user) {
                    echo "<option value=". $user->id . ">" . ucfirst($user->username) . "</option>";
                }
                ?>
            </select>

        </div>
        <div class="form-group">
            <label for="location">Location</label>
            <select name="location_id" id="location" class="form-control">
                  <?php
                foreach ($locations_dropdown as $locat) {
                    echo "<option value=". $locat->Code . ">" . ucfirst($locat->location) . "</option>";
                }
                ?>
            </select>

        </div>
            <button class="btn btn-primary" type="submit">Update Location</button>
        </form>
    </div>
</div>
    </div>
</div>


<script>
    $('#username,#location').select2();
</script>

