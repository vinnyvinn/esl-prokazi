<div class="panel panel-default">
    <div class="panel panel-heading">Document View </div>
    <div class="panel panel-body">
        <div class="row">
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" name="name" class="form-control" value="<?php echo $documents['name'];?>" disabled>
                </div>
                <div class="form-group">
                    <label for="document_type">Document Type</label>
                    <input type="text" name="document_type" class="form-control" value="<?php echo $documents['legal_document'];?>" disabled>
                </div>

            </div>
             <div class="col-sm-4">
                <div class="form-group">
                    <label for="covered_from">Covered from</label>
                    <input type="text" name="covered_to" class="form-control" value="<?php echo $documents['covered_from'];?>" disabled>
                </div>
                <div class="form-group">
                    <label for="covered_to">Covered To</label>
                    <input type="text" name="covered_to" class="form-control" value="<?php echo $documents['covered_to'];?>" disabled>
                </div>
                
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="responsible">Responsible</label>
                    <input type="text" name="responsible" class="form-control" value="<?php echo $documents['responsible'];?>" disabled>
                </div>
                <?php $files=unserialize($documents['file_document']);
                 $total_files = count($files);
                

                   // $this->load->view("includes/timeline_preview", array("files" => $files));
            

                 if($total_files) {
                $download_caption = lang('download');
                if ($total_files > 1) {
                    $download_caption = sprintf(lang('download_files'), $total_files);
                }

                echo "<i class='fa fa-paperclip pull-left font-16'></i>";
                echo anchor(get_uri("legal/download_legal_document_files/" . $documents['id']), $download_caption, 
                array("class" => "pull-right", "title" => $download_caption));
            }
                ?>
               
                
            </div>
        </div>
    </div>
</div>

