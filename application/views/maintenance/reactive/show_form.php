<?php echo form_open('"id" = "create-parts-form", "class" = "general-form", "role" = "form"'); ?>

<div class="modal-body clearfix">
     <div class="panel panel-default">
    <div class="panel-heading">Requisition #<?php echo $services[0]['requisition_no']?>
     <a href="<?php echo base_url('reactive/print_external/'.$services[0]['id']);?>" class="btn btn-info btn-sm pull-right">Download Page <i class="fa fa-download" aria-hidden="true"></i></a>
    </div>
    <div class="panel-body">
     <div class="row">
  <div class="col-sm-6">
    <div class="form-group vehicle_sel">
    <label for="job_card" class="col-sm-10"><b><?php echo lang('job_card'); ?></b></label>
   <select class="form-control" name="job_card_id" id="job_card" disabled>
              <option value=""><?php echo $services[0]['card_no']?></option> 
               <?php
              foreach ($jobs_card_dropdown as $card) {
                  echo "<option value=". $card->id . ">" . ucfirst($card->card_no) . "</option>";
              }
              ?>
           </select>
      
    </div>
   <div class="form-group">
   <br>
    <label for="vehicle" class="col-sm-3"><b><?php echo lang('vehicle');?></b></label>
       <p id="vehicle_spare"><?php echo $services[0]['code']?></p>                        
</div>
</div>
<div class="col-sm-6">
<div class="form-group">
    <label for="description"><b><?php echo lang('description'); ?></b></label>
    
        <?php
        echo form_textarea(array(
            "id" => "description",
            "name" => "description",
            "class" => "form-control",
            "cols" => "10",
            "rows" => "5",
            "value" => $services[0]['description'],
            "disabled" => "disabled"
           
        ));
        ?>
    </div>
  </div>
<div class="col-sm-3">
<div class="form-group">
    <label for="name"><b><?php echo lang('spare'); ?></b></label>
    <select class="form-control" name="stock_id" id="part" disabled>
      <option value=""><?php echo $services[0]['stock_name']?></option>
     
    </select>
       
    </div>
</div>

<div class="col-sm-3">
<div class="form-group">
    <label for="amount"><b>Price</b></label>
    
        <?php
        echo form_input(array(
            "id" => "amount",
            "name" => "amount",
            "class" => "form-control",
            "value" => number_format($services[0]['avg_cost'],2),
            "type" => "number",
            "required" => "required",
            "disabled" => "disabled",
             ));
        ?>
    </div>
</div>
<div class="col-sm-3">
<div class="form-group">
    <label for="quantity"><b><?php echo lang('quantity'); ?></b></label>
    
        <?php
        echo form_input(array(
            "id" => "quantity",
            "name" => "quantity",
            "class" => "form-control",
             "value" => $services[0]['qnty_out'],
            "type" => "number",
            "required" => "required",
            "disabled" => "disabled",
           
           
        ));
        ?>
    </div>
</div>

<div class="col-sm-3">
<div class="form-group">
  <label for="quantity"><b><?php echo lang('total'); ?></b>
 <p>Ksh. <?php echo number_format($services[0]['total']);?></p>
  </label>
  
</div>
</div>
</div>
</div>
</div>
</div>

<?php echo form_close(); ?>

<script type="text/javascript">
  $("#job_card").select2();
   $("#part").select2();
</script>
 <script type="text/javascript">   
             $(document).ready(function() {

             $('select[name="job_card_id"]').on('change', function() {
            var spare_id = $(this).val();
            console.log(spare_id)
            var path="<?php echo site_url('reactive/spare')?>/" + spare_id;
                 $.ajax({
                type  : 'ajax',
                url   : path,
                async : false,
                dataType : 'json',
                success : function(data){
                    var html ='<p>'+data+'</p>';
                   $('#vehicle_spare').html(html);
                }
 
            });
        });
        });
</script>
<script type="text/javascript">
  $('#saved_data').on('click',function(){
            var job_card = $('#job_card').val();
            var description = $('#description').val();
            var part = $('#part').val();
            var amount = $('#amount').val();
            var quantity       = $('#quantity').val();
              $.ajax({
                type : "POST",
                url  : "<?php echo site_url('reactive/save_part')?>",
                dataType : "JSON",
                data : {job_card_id:job_card, description:description, spare_id:part,amount:amount,quantity:quantity},
                success: function(data){
                    $('[name="job_card_id"]').val("");
                    $('[name="description"]').val("");
                    $('[name="spare_id"]').val("");
                    $('[name="amount"]').val("");
                    $('[name="quantity"]').val("");
                    window.location = "<?php echo site_url('reactive')?>";
                }
            });
            return false;
        });
</script>
