<div class="panel panel-default">
	<div class="panel panel-heading">Inwards Cheques
     <?php if(get_array_value($this->login_user->permissions,"can_receive_cheque") =="1") {?>
 <button class="btn btn-primary btn-sm pull-right" data-toggle="modal" data-target="#myItemModal">
      Receive new Cheque
    </button>
  <?php }?>
	</div>
	<div class="panel panel-body">
		<table id="items_table" class="table-striped table-bordered">
			<thead>
			<tr>
				
				<th>#</th>
				<th>Title</th>
				<th>Description</th>
				<th>Sender</th>
				<th>Receiver</th>
        <th>Cheque No.</th>
        <th>Cheque Amount.</th>
        <th>Date</th>
        <th>Status</th>
        <th>Actions</th>
			</tr>
			<thead>
			<tbody>
				<?php foreach ($parcels as $parcel) {?>
					
				<tr>
					<td><?php echo $parcel->id;?></td>
					<td><?php echo $parcel->title;?></td>
					<td><?php echo $parcel->description;?></td>
					<td><?php echo $parcel->sender;?></td>
          <td><?php echo $parcel->received;?></td>
          <td><?php echo $parcel->cheque_no;?></td>
          <td><?php echo $parcel->cheque_amount;?></td>
           <td><?php echo $parcel->cheque_date;?></td>

					<td>
            <?php echo $parcel->status==0 ? "<span class=\"btn btn-success btn-sm\">Processing</span>" :"<span class=\"btn btn-info btn-sm\">Processed</span>"
           
            ?>
            </td>
					<td>

						<?php
            if(get_array_value($this->login_user->permissions,"can_assign_cheque") =="1") {
						if($parcel->status == 0){
                     echo modal_anchor(get_uri("parcels/modal_form_inwards/".$parcel->id), "Assign Now", array("class" => "btn btn-danger btn-sm blink_me", "title" => "Inwards Mail or Parcel"));
                
                }}?>
						</td>
				</tr>
			<?php }?>
			</tbody>
		</table>
	</div>
</div>
<link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/js/datatable/css/dataTables.bootstrap.min.css">
<style>
	.blink_me {
  animation: blinker 1s linear infinite;
}

@keyframes blinker {  
  50% { opacity: 0; }
}
</style>
<script>
	$('#items_table').dataTable();

</script>

<!-- Modal -->
<div class="modal fade" id="myItemModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Cheque Form</h4>
      </div>
      <div class="modal-body">
        <form method="post" action="<?php echo base_url('parcels/add_cheque');?>">
          <div class="row">
            <div class="col-sm-12">
             <div class="form-group">
              <label for="Title">Title</label>
              <input type="text" name="title" class="form-control" placeholder="Title">
            </div>
            <div class="form-group">
              <label for="Cheque No">Cheque No.</label>
              <input type="text" name="cheque_no" class="form-control" placeholder="Cheque No">
            </div>
            <div class="form-group">
              <label for="Cheque Amount">Cheque Amount.</label>
              <input type="number" name="cheque_amount" step="0.01" class="form-control" placeholder="Cheque Amount">
            </div>
            </div>

            <div class="col-sm-12">
            <div class="form-group">
              <label for="Description">Description</label>
              <textarea name="description" id="description" cols="5" rows="3" class="form-control"></textarea>
            
            </div>
        </div>
        <div class="col-sm-12">
            <div class="form-group">
              <label for="Sender">Sender(From)</label>
              <input type="text" name="sender" class="form-control" placeholder="Sender">
            </div>
            <div class="form-group">
              <label for="Cheque date">Date</label>
              <input type="text" name="cheque_date" class="form-control" placeholder="cheque Date" id="cheque_date">
            </div>
                        
                 
        <div class="form-group text-center">
         <input type="submit" name="submit" value="Create" class="btn btn-primary text-center"> 
       </div>
      </div>
  </div>
     </form>
   </div>

 </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script>
  setDatePicker('#cheque_date');
</script>

