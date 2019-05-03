<?php echo form_open(get_uri("ict_reports/maintenance_p"), array("id" => "preventive_maintainance-form", "class" => "general-form", "role" => "form")); ?>

<div class="modal-body clearfix">

    <div class="form-group">
        <label for="ict asset" class=" col-md-3">ICT Asset</label>
        <div class="col-md-9">
          <input type="text" name="ict_assets" value="<?php echo $asset->title;?>" class="form-control" disabled>
          
        </div>
    </div>
    <div class="form-group">
        <label for="ict asset" class=" col-md-3">Purchase Date</label>
        <div class="col-md-9">
          <input type="text" name="purchase_date" value="<?php echo date('Y-m-d',strtotime($asset->p));?>" class="form-control" disabled>
          
        </div>
    </div>
<input type="hidden" name="id" value="<?php echo $id;?>">
    <div class="form-group">
        <label for="maintainance_date" class=" col-md-3">Maintainance Date</label>
        <div class=" col-md-9">
           <input type="text" name="maintainance_date" value="<?php echo $asset->maintainance_date?>" id="maintainance_date" class="form-control" disabled>
        </div>
    </div>
    <div class="form-group">
        <label for="inventory" class=" col-md-3">Assign</label>
        <div class="col-md-9">
           <select class="select2 validate-hidden" name="assign" id="assign" required>
               <?php foreach ($users  as $user ){?>

            <option value="<?php echo $user->id; ?>"<?php if($user->id==$asset->assigned_id) echo 'selected="selected"'; ?>><?php echo $user->first_name.' '.$user->last_name; ?></option>

    <?php }?>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label for="inventory" class=" col-md-3">Next Maintanenance Date</label>
        <div class="col-md-9">
          <input type="text" name="next_maintenance_date" class="form-control" id="next_maintenance_date" id="next_maintenance_date">
          
        </div>
    </div>
</div>

<div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal"><span class="fa fa-close"></span> <?php echo lang('close'); ?></button>
    <button type="submit" class="btn btn-primary"><span class="fa fa-check-circle"></span> Send Request</button>
</div>
<?php echo form_close(); ?>

<script type="text/javascript">
    $(document).ready(function () {
        $("#preventive_maintainance-form").appForm({
            onSuccess: function (result) {
                // $("#inventory_requisitions-table").appTable({newData: result.data, dataId: result.id});
                setTimeout(function () {
                    window.location.reload();
                }, 100);
            }
        });

        $("#preventive_maintainance-form .select2").select2();

        setDatePicker("#maintainance_date,#next_maintenance_date");

    });
</script>
