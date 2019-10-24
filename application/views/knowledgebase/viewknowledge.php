<?php
load_css(array(
    "assets/css/style.css",
));

?>
<!-- MAIN SECTION -->
<div class="container featured-area-default padding-30">
    <div class="row">
        <div class="col-md-12 padding-20">
            <div class="row">
                <!-- BREADCRUMBS -->
                <div class="breadcrumb-container">
                    <ol class="breadcrumb">
                        <li><a href="/"><i class="fa fa-home"></i></a></li>
                        <li><a href="/knowledge_base">Knowledge Base</a></li>
                       
                    </ol>
                </div>
                <!-- END BREADCRUMBS -->
                <!-- ARTICLE  -->
                <div class="panel panel-default">
                    <div class="article-heading margin-bottom-5">
                        <a href="#"><i class="fa fa-adjust"></i>
                            <?php
                             echo $viewdata->title;
                            ?>
                          </a>
                    </div>
                    <div class="article-info">
                        <div class="art-date"><a href="#"><i class="fa fa-calendar-o"></i>
                                <?php
                                echo date('d M Y', strtotime($viewdata->created_at))
                                ?>
                            </a></div>
                        <div class="art-category"><a href="#"><i class="fa fa-folder"></i>
                                <?php
                                echo $viewdata->type->name
                                ?>
                            </a></div>
                    </div>
                    <div class="article-content">
                        <p>
                            <?php
                            echo $viewdata->solution
                            ?>

                        </p>
                        
                       <div class="comment-image-box clearfix">

            <?php
            $files = unserialize($viewdata->image);
            $total_files = count($files);
            $this->load->view("includes/timeline_preview", array("files" => $files));


            if ($total_files) {
                $download_caption = lang('download');
                if ($total_files > 1) {
                    $download_caption = sprintf(lang('download_files'), $total_files);
                }
                echo "<i class='fa fa-paperclip pull-left font-16'></i>";
                echo anchor(get_uri("knowledge_base/download_knowledgebase_files/" . $viewdata->id), $download_caption, array("class" => "pull-right", "title" => $download_caption));
            }
            ?>
        </div>

                    </div>
                    <hr class="style-three">
                  </div>
                <!-- END ARTICLE -->

            </div>

        </div>
    </div>
</div>
<!-- END MAIN SECTION -->
