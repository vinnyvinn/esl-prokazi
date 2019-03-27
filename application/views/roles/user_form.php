<div class="panel panel-default">
    <div class="panel panel-heading">User Permissions</div>
    <div class="panel panel-body">
        <div class="row">
            <div class="col-sm-12">
                <div class="form-group">
                    <label for="user_id">Choose User</label>
                    <select name="username" id="user_id" class="form-control">
                        <option value="">--Choose User--</option>
                        <?php
                        foreach ($users_dropdown as $value) {
                            echo "<option value=". $value->id . ">" . ucfirst($value->first_name) . ' '.ucfirst($value->last_name)."</option>";
                        }
                        ?>
                    </select>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $("#user_id").select2();

    $(document).ready(function() {
        $('select[name="username"]').on('change', function() {
            var check_id = $(this).val();
            console.log(check_id);
            var path="<?php echo site_url('user_roles/permissions')?>/" + check_id;
            window.location.replace(path);
        });
    });
    </script>
