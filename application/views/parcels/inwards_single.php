<div class="panel panel-default">
	<div class="panel panel-heading">Inward Parcel details</div>
<div class="panel panel-body">
	<div class="row">
		<div class="col-sm-6">
			<div class="form-group">
				<label for="title">Title</label>
				<input type="text" name="title" value="<?php echo $parcels->title;?>" class="form-control" disabled>
			</div>
			<div class="form-group">
				<label for="from">From</label>
				<input type="text" name="from" value="<?php echo $parcels->sender;?>" class="form-control" disabled>
			</div>
			<div class="form-group">
				<label for="to">To</label>
				<input type="text" name="to" value="<?php echo $receiver->first_name .' '.$receiver->last_name;?>" class="form-control" disabled>
			</div>

			

		</div>

		<div class="col-sm-6">
			<div class="form-group">
				<label for="description">Description</label>
				<textarea name="description" id="description" cols="5" rows="3" class="form-control" disabled><?php echo $parcels->description;?></textarea>
				
			</div>

			<div class="form-group">
				<label for="title">Date</label>
				<input type="text" name="date" value="<?php echo $parcels->created_at;?>" class="form-control" disabled>
			</div>

			<div class="form-group">
				<div class="comment-image-box clearfix">

            <?php
           
            $files = unserialize($parcels->files);
            $total_files = count($files);
            //$this->load->view("includes/timeline_preview", array("files" => $files));

        
            if ($total_files) {
                $download_caption = lang('download');
                if ($total_files > 1) {
                    $download_caption = sprintf(lang('download_files'), $total_files);
                }
                echo "<i class='fa fa-paperclip pull-left font-16'></i>";
                echo anchor(get_uri("parcels/download_inward_files/" . $parcels->id), $download_caption, array("class" => "pull-right", "title" => $download_caption));
            }
            ?>
        </div>
			</div>
		</div>
	</div>
</div>


</div>