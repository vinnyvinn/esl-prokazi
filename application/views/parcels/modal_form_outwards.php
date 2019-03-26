<?php echo form_open(get_uri("parcels/save_outwards"), array("id" => "project-form", "class" => "general-form", "role" => "form")); ?>

<div class="modal-body clearfix">

    <input type="hidden" name="activity_id" id="activity_id" value="4">
    <input type="hidden" name="parcel_id" value="<?php echo $parcel_id;?>" id="parcel_id">

    <div class="form-group">
        <label for="receptionist_id" class=" col-md-3">Receptionist</label>
        <div class="col-md-8">
          <select class="select2 validate-hidden" name="receptionist_id" id="sender_id" required>
              <?php
              foreach ($senders_dropdown as $value) {
                    echo "<option value=". $value->id . ">" . ucfirst($value->first_name . " " . $value->last_name) . "</option>";
              }
              ?>
            </select>
        </div>
    </div>

    
    <div class="form-group">
        <label for="title" class=" col-md-3">Sent to(Receiver)</label>
        <div class=" col-md-9">
            <?php
            echo form_input(array(
                "type" => "text",
                "id" => "receiver",
                "name" => "receiver",
                "class" => "form-control",
                "placeholder" => "Receiver",
                "autofocus" => true,
                "data-rule-required" => true,
                "data-msg-required" => lang("field_required"), 
            ));
            ?>
        </div>
    </div>
     <div class="form-group">
        <label for="title" class=" col-md-3">Title</label>
        <div class=" col-md-9">
            <?php
            echo form_input(array(
                "type" => "text",
                "id" => "title",
                "name" => "title",
                "class" => "form-control",
                "placeholder" => "Title",
                "autofocus" => true,
                "data-rule-required" => true,
                "data-msg-required" => lang("field_required"),
            ));
            ?>
        </div>
    </div>
    <div class="form-group">
        <label for="description" class=" col-md-3">Description</label>
        <div class=" col-md-9">
            <?php
            echo form_textarea(array(
                "type" => "text",
                "id" => "description",
                "name" => "description",
                "class" => "form-control",
                "placeholder" => "Description",
                "autofocus" => true,
                "data-rule-required" => true,
                "data-msg-required" => lang("field_required"),
            ));
            ?>
        </div>
    </div>
    <div class="form-group">
    <label for="client_id" class=" col-md-3">Upload File</label>
    <div class="col-md-9">
        <div id="ticket-comment-dropzone" class="post-dropzone box-content form-group">
            <?php $this->load->view("includes/dropzone_preview"); ?>
            <footer class="panel-footer b-a clearfix ">
              
                <button class="btn btn-default upload-file-button pull-left btn-sm round" type="button"
                        style="color:#7988a2"><i class='fa fa-camera'></i> <?php echo lang("upload_file"); ?></button>

            </footer>
        </div>
    </div>
</div>

</div>

<div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal"><span class="fa fa-close"></span> <?php echo lang('close'); ?></button>
    <button type="submit" class="btn btn-primary"><span class="fa fa-check-circle"></span> <?php echo lang('save'); ?></button>
</div>
<?php echo form_close(); ?>

<script type="text/javascript">
     var uploadUrl = "<?php echo get_uri("parcels/upload_file"); ?>";
        var validationUrl = "<?php echo get_uri("parcels/validate_file"); ?>";
        
        var dropzone = attachDropzoneWithForm("#ticket-comment-dropzone", uploadUrl, validationUrl);

    $(document).ready(function () {
        $("#project-form").appForm({
            onSuccess: function (result) {
                // $("#parcels-table").appTable({newData: result.data, dataId: result.id});
                setTimeout(function () {
                    window.location.reload();
                }, 100);
            }
        });

        $("#project-form .select2").select2();

    });
</script>