<div class="panel panel-default">
    <div class="panel panel-heading">Select User Group</div>
        <div class="panel panel-body">
            <form action="<?php echo base_url('user_rights/details');?>" method="post">
            <div class="form-group">

                <label for="user_group">User group</label>
                <select name="user_group" id="user_group" class="form-control" style="width: 60%">
                    <?php
                    foreach ($user_groups as $group) {
                        echo "<option value=". $group->id . ">" . ucfirst($group->title) . "</option>";
                    }
                    ?>
                </select>
            </div>
                <button class="btn btn-primary btn-sm" type="submit"><i class="fa fa-user"></i> Search</button>
            </form>
        </div>
    </div>
