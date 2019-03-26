<?php echo form_open(get_uri("lawsuits/updatecases"),
    array("id" => "legaldocumentsform",
        "class" => "general-form", "role" => "form")); ?>
<div class="modal-body clearfix">
    <input type="hidden" name="id" value="<?php echo $model_info->id; ?>"/>
    <div class="form-group">
        <label for="name" class=" col-md-3"> Name</label>
        <div class=" col-md-9">
            <?php
            echo form_input(array(
                "id" => "name",
                "name" => "name",
                "class" => "form-control",
                'value' => $model_info->name,
                "placeholder" => 'Name',
                "autofocus" => true,
                "data-rule-required" => true,
                "data-msg-required" => lang("field_required"),
            ));
            ?>
        </div>
    </div>
    <div class="form-group">
        <label for="client_id" class=" col-md-3">Description</label>
        <div class="col-md-9">
            <?php
            echo form_textarea(array(
                "id" => "description",
                "name" => "description",
                'value' => $model_info->description,
                "class" => "form-control wysiwyg",
                "placeholder" => 'Description',
                "data-rule-required" => true,
                "data-msg-required" => lang("field_required"),
            ));
            ?>
        </div>
    </div>




        </div>
    </div>

    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><span
                class="fa fa-close"></span> <?php echo lang('close'); ?></button>
        <button type="submit" class="btn btn-primary"><span
                class="fa fa-check-circle"></span> <?php echo lang('save'); ?>
        </button>
    </div>
</div>


<?php echo form_close(); ?>
<script type="text/javascript">
    $(document).ready(function () {
        //check if its an update hence load the actual value in the area
        $("#legaldocumentsform .select2").select2();
        setDatePicker("#procedure_date");


        $("#legaldocumentsform").appForm({
            onSuccess: function (result) {
                setTimeout(function () {
                    window.location.reload();
                }, 100);
            }
        });
        $("#name").focus();

    });
</script>
