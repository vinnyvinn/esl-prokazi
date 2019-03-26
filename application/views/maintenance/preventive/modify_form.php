<div class="container">
		<form method="POST" action="<?php echo base_url('preventive/update_job') ?>" enctype="multipart/form-data">
				<div class="modal-body clearfix">
						<div class="panel panel-default">
								<input type="hidden" name="id" value="<?php echo $jobs['id'];?>">
								<div class="panel-heading">Job Card #<?php echo $jobs['card_no']?>
								</div>
								<div class="panel-body">
		 <div class="row">
			<div class="col-sm-4">
				<div class="form-group vehicle_sel">
					<label for="vehicle_no"><b><?php echo lang('vehicle_no'); ?></b></label>
					<select class="form-control" name="vehicle_no" id="vehicle_no" class="vehicle" style="width: 100% !important;" disabled>
																		<option value="<?php echo $jobs['id'];?>"><?php echo $jobs['code'];?></option>
																		<?php
																		foreach ($vehicles_dropdown as $value) {
																				echo "<option value=". $value->id . ">" . ucfirst($value->code ? $value->code : $value->description) . "</option>";
																		}
																		?>
																</select>
					
				</div>
				<br>
				<div class="form-group">
				 <label for="track_by"><b>Track By</b></label>
				 <select class="form-control" name="track_by" id="partselected" disabled>
					<option value=""><?php echo $jobs['track_by'];?></option>
					<option value="hours">Hours</option>
					<option value="kilometer">Kilometers</option>
					<option value="miles">Miles</option>
				</select>
				
			</div>

			<div class="form-group">
			 <label for="providerselected"><b>Service Provider Type</b></label>
			 <select class="form-control" name="provider" id="providerselected" required>
				<option value="">--Select Provider Type--</option>
				<option value="internal">Internal</option>
				<option value="external">External</option>
			</select>
			
		</div>
		<div id="internal" class="providers internal" style="display: none;">
			<div class="form-group">
			 <label for="internal_provider"><b><?php echo lang('service_provider'); ?></b></label>
			 <input type="text" name="internal_provider" id="internal_provider" class="form-control" placeholder="name">
			 
		 </div>
	 </div>
	 
	 <div id="external" class="providers external">
		<div class="form-group">
		 <label for="external_provider"><b><?php echo lang('service_provider'); ?></b></label>
		 <select class="form-control" name="external_provider" id="external_provider" placeholder="provider">
			<option value="">--Choose Service Provider--</option>
			<?php
			foreach ($providers_dropdown as $provider) {
				echo "<option value=". $provider->id . ">" . ucfirst($provider->name) . "</option>";
			}
			?>
		</select>

	</div>
	 <?php

          $parts=json_decode($jobs['part_name']);
          $quantity=json_decode($jobs['quantity']);
          $cost=json_decode($jobs['cost']);
          ?>
	 <?php

           foreach ($parts as $key => $value): ?>
	<div class="form-group fieldGroup">
		<div class="input-group">
		 <input type="text" name="part_name[]" class="form-control" placeholder="Part Name" value="<?= $value ? $value : ''?>">
		 <input type="number" name="quantity[]" class="form-control" placeholder="Quantity" value="<?= isset($quantity[$key]) && $quantity[$key] > 0 ? number_format((int) $quantity[$key], 0) : ''; ?>">
		 <input type="number" name="cost[]" class="form-control" step="0.01" placeholder="Cost" value="<?= isset($cost[$key]) && $cost[$key] > 0 ? number_format((int) $cost[$key], 2) : ''?>">
		 </div>
	</div>
	 <?php endforeach; ?>



<div class="col-sm-6">
 <div class="form-group">
	 <label for="labour"><b>Labour</b></label>
	 <input type="text" name="labour" class="form-control" id="labour" placeholder="Labour" value="<?php echo $jobs['labour'];?>">

 </div>
</div>
<div class="col-sm-6">
	<div class="form-group">
	 <label for="labour_cost"><b>Labour Cost</b></label>
	 <input type="number" name="labour_cost" id="labour_cost" class="form-control" step="0.01" placeholder="Labour Cost" value="<?php echo $jobs['labour']?$jobs['labour_cost'] : '';?>">

 </div>
</div>
</div>
<br>

</div>
<div class="col-sm-4">
	<div class="form-group">

		<label for="job_service"><b>Service Type</b></label>
		 <select name="service_type_id" id="service_type_id" class="form-control">
					<option value="<?php echo $jobs['service_type_id'];?>"><?php echo $jobs['service'];?></option>
														<?php
														foreach ($services_dropdown as $srv) {
																echo "<option value=". $srv->id . ">" . ucfirst($srv->name) . "</option>";
																}
																?>
														</select>

	</div>

	<div class="form-group">
		<label for="job_type"><b>Job Type</b></label>
		 <input type="text" class="form-control" name="job_type_id" value="<?php echo $jobs['job_type_id']?>">
	</div>
	<div class="col-sm-6">
		<div class="form-group">
			<label for="actual_date"><b>Actual Date</b></label>
			
			<?php
			echo form_input(array(
				"id" => "actual_date",
				"name" => "actual_date",
				"value" => $jobs['actual_date'],
				"class" => "form-control",
				
				));
				?>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="form-group">
				<label for="completion_date"><b>Completion Date</b></label>
				
				<?php
				echo form_input(array(
					"id" => "completion_date",
					"name" => "completion_date",
						"value" => $jobs['completion_date'],
					"class" => "form-control",
					
					));
					?>
				</div>
			</div>
			
			<div class="form-group">
				<label for="driver"><b><?php echo lang('assigned_to'); ?></b></label>
				<p id="driver"></p>
			</div>
			<div class="form-group">
				<label for="description"><b><?php echo lang('description'); ?></b></label>
				<?php
				echo form_textarea(array(
					"id" => "description",
					"name" => "description",
					"value" => $jobs['explanation'],
					"class" => "form-control",
					'rows' => '5',
					'cols' => '40',
					));
					?>
				</div> 
				<div class="form-group">
					<label for="client_id" style="color:#7988a2"><b>Upload Checklist</b>
					 <input type='file' name='picture' size='20' class="btn btn-info" />
				 </label>
				 
			 </div>
		 </div>

		 <div class="col-sm-4">
			<div class="form-group">
				<b><?php echo lang('make_model'); ?></b>
				<br>
				<p id="model"></p>      
			</div>
			<br><br>
			<div class="col-sm-6">
				<div class="form-group">
					 <label for="time_in"><b>Time In</b></label>

					 	<input type="text" name="time_in" class="form-control" value="<?php echo $jobs['time_in'];?>">
											
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<label for="time_in"><b>Time Out</b></label>
						
						<input type="text" class="form-control" name="time_out" value="<?php echo $jobs['time_out'];?>" id="time_in">
							
						</div>
					</div>
											 
						<br>
						
						<div class="form-group">
							<label for="fuel_balance"><b><?php echo lang('fuel_balance'); ?></b></label>
						<select class="form-control" name="fuel_balance" id="fuel_balance" required>

																		<option value="<?php echo $jobs['fuel_balance']?>"><?php echo $jobs['balance'];?></option>
																		<?php
																		foreach ($fuel_dropdown as $fuel) {
																				echo "<option value=". $fuel->id . ">" . ucfirst($fuel->description) . "</option>";
																		}
																		?>
																</select>
						</div>
						<div class="form-group mile" style="display: none;">
							<label for="next_time_miles"><b>Next Mileage Maintenance</b></label>
							 <input type="number" name="next_time_miles" class="form-control">
						</div>
						 <div class="form-group hour" style="display: none;">
							<label for="next_time_hours"><b>Next Hours Maintenance</b></label>
							 <input type="number" name="next_time_hours" class="form-control">
						</div>
						<div class="form-group kms" style="display: none;">
							<label for="next_time_km"><b>Next KM Maintenance</b></label>
							<input type="number" name="next_time_km" class="form-control">
						</div>
						<div class="form-group">
							<label for="next_service_date">Next Service Date</label>
							 <?php
																echo form_input(array(
																		"id" => "next_service_date",
																		"name" => "next_service_date",
																		"value" => $jobs['next_service_date'],
																		"class" => "form-control",


																));
																?>
						</div>
					</div>

				</div>
			</div>
			<hr>
			<br>
			<div class="form-group text-center">
                        <a href="<?php echo base_url();?>preventive" class="btn btn-danger" role="button">back</a>
                        <button type="submit" class="btn btn-info" name="submit"><span class="fa fa-check-circle"></span>Update Job Card</button>


                    </div>
		</form>
		<!-- <?php //echo form_close();?> -->
		<hr>
		<?php echo form_close();?>
		<div class="row">
		 <div class="col-sm-12">
			<table class="table table-striped" style="display: none;">
				<thead>
					<tr>


						<th>Operation</th>
						<th>Action</th>
						<th>Allocated To</th>
						<th>Start Date</th>
						<th>Start Time</th>
						
					</tr>
				</thead>
				<tbody id="show_data">

				</tbody>
				
			</tr>
			
		</table>
	</div>
</div>

<?php echo form_close(); ?>


<script type="text/javascript">
 $(document).ready(function() {
	$('select[name="job_service_id"]').on('change', function() {
		var serviceID = $(this).val();
		
					 //console.log(serviceID);
					 var path = "<?php echo site_url('preventive/serviceTypesAjax')?>/" + serviceID;
					 
					 if(serviceID) {
						$.ajax({
							url: path,
							type: "GET",
							dataType: "json",
							success:function(data) {
							 $('select[name="job_type_name"]').empty();
							 $.each(data, function(key, value) {
													//console.log(value.id);
													
													$('select[name="job_type_name"]').append('<option value="'+ value.id +'">'+ value.job_type_name +'</option>');
												});
						 }
					 });
					}else{
						$('select[name="job_type_name"]').empty();
					}
				});
});
 
</script>


<script type="text/javascript">
	$("#service_type").select2();
	$("#job_type").select2();
	$("#vehicle_no").select2();
	$("#external_provider").select2();
	$("#status_id").select2();
	$("#inspection_id").select2();
	$("#service_type").select2();
	$("#assigned_to").select2();
	$("#activity").select2();
	$("#supplier_id").select2();
	$('#time_in,#time_out').timepicker();
	
	setDatePicker("#completion_date,#start_date,#actual_date,#next_service_date");
	
</script>
<script type="text/javascript">
 $(document).ready(function() {
	 $('select[name="job_type_name"]').on('change', function() {
		 var check_id = $(this).val();
		 console.log(check_id);
		 var path="<?php echo site_url('preventive/DisplayServiceType')?>/" + check_id;
		 console.log(path);
		 $.ajax({
			type  : 'ajax',
			url   : "<?php echo site_url('preventive/DisplayServiceType')?>/" + check_id,
			async : false,
			dataType : 'json',
			success : function(data){
			 console.log(data);
			 var html = '';
			 var i;
			 for(i=0; i<data.length; i++){
				html += '<tr>'+
				'<td>'+data[i]['explanation']+'</td>'+
				'<td>'+data[i]['tasks']+'</td>'+
				'<td>'+data[i]['employee']+'</td>'+
				'<td>'+data[i]['start_date']+'</td>'+
				'<td>'+data[i]['job_time_in']+'</td>'+
				'</tr>';
			}
			$('#show_data').html(html);
		}
		
	});
	 });
 });
</script>
<script type="text/javascript">
 $(document).ready(function() {
	 $('select[name="vehicle_no"]').on('change', function() {
		var model_id = $(this).val();
		var path="<?php echo site_url('preventive/model')?>/" + model_id;
		$.ajax({
			type  : 'ajax',
			url   : path,
			async : false,
			dataType : 'json',
			success : function(data){
			 var html ='<p>'+data+'</p>';
			 $('#model').html(html);
		 }
		 
	 });
	});
 });
</script>
<script type="text/javascript">
 $(document).ready(function() {
	 $('select[name="vehicle_no"]').on('change', function() {
		var km_id = $(this).val();
		var path="<?php echo site_url('preventive/km_reading')?>/" + km_id;
		$.ajax({
			type  : 'ajax',
			url   : path,
			async : false,
			dataType : 'json',
			success : function(data){
				localStorage.setItem('km_r', data);
				var html ='<p>'+data+'</p>';
				$('#previous_km_reading').html(html);
			}
			
		});
	});
 });
</script>
<script type="text/javascript">
 $(document).ready(function() {
	 $('select[name="vehicle_no"]').on('change', function() {
		var km_id = $(this).val();
		var path="<?php echo site_url('preventive/miles_reading')?>/" + km_id;
		$.ajax({
			type  : 'ajax',
			url   : path,
			async : false,
			dataType : 'json',
			success : function(data){
				localStorage.setItem('miles_r', data);
				var html ='<p>'+data+'</p>';
				$('#previous_miles_reading').html(html);
			}
			
		});
	});
 });
</script>
<script type="text/javascript">
 $(document).ready(function() {
	 $('select[name="vehicle_no"]').on('change', function() {
		var hrs_id = $(this).val();
		var path="<?php echo site_url('preventive/machine_hours')?>/" + hrs_id;
		$.ajax({
			type  : 'ajax',
			url   : path,
			async : false,
			dataType : 'json',
			success : function(data){
				localStorage.setItem('hrs', data);
				var html ='<p>'+data+'</p>';
				$('#prev_hrs').html(html);
			}
			
		});
	});
 });
</script>
<script type="text/javascript">   
 $(document).ready(function() {
	 $('select[name="vehicle_no"]').on('change', function() {
		var driver_id = $(this).val();
		var path="<?php echo site_url('preventive/driver')?>/" + driver_id;
		$.ajax({
			type  : 'ajax',
			url   : path,
			async : false,
			dataType : 'json',
			success : function(data){
			 var html ='<p>'+data+'</p>';
			 $('#driver').html(html);
		 }
		 
	 });
	});
 });
</script>


<script>
	function myFunction() {
		$('#inspection_id').each(function(){
		 console.log($(this).val());
	 }
	 );
	}
</script>
<!-- <script type="text/javascript">
 $(document).ready(function() {
	 $('select[name="vehicle_no"]').on('change', function() {
		var warranty_id = $(this).val();
		var path="<?php //echo site_url('preventive/warrantyCheck')?>/" + warranty_id;
		$.ajax({
			type  : 'ajax',
			url   : path,
			async : false,
			dataType : 'json',
			success : function(data){
			 if (!data.length){ 
				 alert('sorry,this vehicle is still under warranty');
				 window.location.replace('jobs_form');
			 }
			 else{
				return;
			}
		}
		
	});
	});
 });
</script> -->
<script type="text/javascript">
	$('#km_reading').on('keyup',function(){
	 var km = $(this).val();
	 var km_rd=localStorage.getItem("km_r");
	 $("#km_id").html(km-km_rd);
 });
</script>
<script type="text/javascript">
	$('#miles_reading').on('keyup',function(){
	 var miles = $(this).val();
	 var miles_rd=localStorage.getItem("miles_r");
	 $("#miles_id").html(miles-miles_rd);
 });
</script>
<script type="text/javascript">
	$('#hours_id').on('keyup',function(){
	 var hrs = $(this).val();
	 var hrs_id=localStorage.getItem("hrs");
	 $("#actual_hours").html(hrs-hrs_id);
 });
</script>

<script type="text/javascript">
	$(function() {
		$('#partselected').change(function(){
			var unit=$(this).val();
			 if(unit=='miles'){
				 $('.mile').show();
				 $('.kms').hide();
			}
			if(unit=='kilometer'){
				 $('.kms').show();
				 $('.mile').hide();
			}
			if(unit=='hours'){
				 $('.kms').hide();
				 $('.mile').hide();
				 $('.hour').show();
			}
			$('.services').hide();
			$('#' + $(this).val()).show();
		});
	});
</script>
<script type="text/javascript">
	$(function() {
		$('#providerselected').change(function(){
			$('.providers').hide();
			$('#' + $(this).val()).show();
		});
	});
</script>
<script type="text/javascript">
	var inputid=0;
	$(document).on('click', '.add', function(){
		inputid ++;
		var html = '';
		html +='<input type="text" name="part_name['+inputid+'][]" class="form-control">';
		
		html +='<input type="text" name="quantity['+inputid+'][]" class="form-control">';
		
		html +='<input type="text" name="cost['+inputid+'][]" class="form-control">';
		html += '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove"><span class="glyphicon glyphicon-minus"></span></button></td></tr>';
		$('#parts_id').append(html);
		
		
	});
	
	$(document).on('click', '.remove', function(){
		$(this).closest('tr').remove();
	});
	
</script>
<script type="text/javascript">
	$(document).ready(function(){
		//group add limit
		var maxGroup = 10;
		
		//add more fields group
		$(".addMore").click(function(){
			if($('body').find('.fieldGroup').length < maxGroup){
				var fieldHTML = '<div class="form-group fieldGroup">'+$(".fieldGroupCopy").html()+'</div>';
				$('body').find('.fieldGroup:last').after(fieldHTML);
			}else{
				alert('Maximum '+maxGroup+' groups are allowed.');
			}
		});
		
		//remove fields group
		$("body").on("click",".remove",function(){ 
			$(this).parents(".fieldGroup").remove();
		});
	});
</script>


