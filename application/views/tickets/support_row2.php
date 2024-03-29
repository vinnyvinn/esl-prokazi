<div class="media b-b p10 m0 bg-white">
    <?php

    ?>
    <div class="media-left pl10">
        <span class="avatar avatar-sm">
            <img src="<?php echo get_avatar($comment->created_by_avatar); ?>" alt="..." />
        </span>
    </div>
    <div class="media-body">

        <p><?php echo nl2br(link_it($comment->description)); ?></p>
<div class="comment-image-box clearfix">

    <?php
    if(@unserialize($comment->files) !== false) {
        $files = unserialize($comment->files);
        $total_files = count($files);
        $this->load->view("includes/timeline_preview", array("files" => $files));


        if ($total_files) {
            $download_caption = lang('download');
            if ($total_files > 1) {
                $download_caption = sprintf(lang('download_files'), $total_files);
            }
            echo "<i class='fa fa-paperclip pull-left font-16'></i>";
            echo anchor(get_uri("tickets/download_support_files/" . $comment->id), $download_caption, array("class" => "pull-right", "title" => $download_caption));
        }

    }

    else {
        if ($comment->files) {
            echo "<i class='fa fa-paperclip pull-left font-16'></i>";
            echo anchor(get_uri("tickets/downloadComment/" . $comment->id), 'Download', array("class" => "pull-right", "title" => "Download"));
        }
    }

    ?>

</div>
</div>
</div>
