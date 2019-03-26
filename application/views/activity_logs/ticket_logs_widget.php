<?php foreach ($activity_logs as $log) { ?>

    <div class="media b-b mb15">
        <div class="media-left">
            <span class="avatar avatar-xs">
                <img src="<?php echo get_avatar($log->created_by_avatar); ?>" alt="..." />
            </span>
        </div>
        <div class="media-body">
            <div class="media-heading">

                <?php

                if ($log->user_type === "staff") {
                    echo get_team_member_profile_link($log->created_by, $log->created_by_user, array("class" => "dark strong"));
                } else {
                    echo get_client_contact_profile_link($log->created_by, $log->created_by_user, array("class" => "dark strong"));
                }
                ?>
                <br>
                 <b><?php  echo anchor("tickets/view_support/".$log->ticket,'Titcket #'.$log->ticket);?></b>
                 <br>
                <small>Duration: <span class="text-off"><?php echo $log->duration;?> hrs</span></small>
            </div>
            </div>
        </div>
    <?php }?>