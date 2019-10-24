<div class="panel panel-default">
	<div class="panel panel-heading">Inwards Cheques
 	</div>
	<div class="panel panel-body">
		<table id="items_table" class="table-striped table-bordered">
			<thead>
			<tr>
				
				<th>#</th>
				<th>Title</th>
				<th>Amount</th>
				<th>Receiver</th>
        <th>Cheque No.</th>
        <th>Date</th>
        <th>Collected</th>
        <th>Status</th>
        <th>Actions</th>
			</tr>
			<thead>
				<?php foreach ($cheques as $cheque) {?>
      <tbody>
					
				<tr>
          <td><?php echo $cheque->id;?></td>
          <td><?php echo $cheque->title;?></td>
          <td><?php echo $cheque->cheque_amount;?></td>
           <td><?php echo $cheque->receiver_name;?></td>
          <td><?php echo $cheque->cheque_no;?></td>
					<td><?php echo $cheque->cheque_date;?></td>
          <td><?php echo $cheque->status==1 ? 'Collected' : 'Not Collected'?></td>
          <td>
            <?php echo $cheque->status == 1 ? "<span class=\"btn btn-success btn-sm\">Accepted</span>" :
            ($cheque->status == 2 ? "<span class=\"btn btn-warning btn-sm\">Rejected" : "<span class=\"btn btn-info btn-sm\">Processing")

            ?>
         </td>
					<td>
            <?php if(!$cheque->status==1 || !$cheque->status==2) {?>
						<a href="<?php echo base_url('cheques/accept_inward/'.$cheque->id);?>" class="btn btn-info btn-xs"><i class="fa fa-check" data-toggle="tooltip" title="Accept"></i></a>
            <a href="<?php echo base_url('cheques/reject_inward/'.$cheque->id);?>"class="btn btn-success btn-xs"><i class="fa fa-repeat" data-toggle="tooltip" title="Reject"></i></a>
            <a href="<?php echo base_url('cheques/delete_inward/'.$cheque->id);?>" class="btn btn-danger btn-xs"><i class="fa fa-trash" data-toggle="tooltip" title="Remove"></i></a>
						<?php }?>
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
        <form method="post" action="<?php echo base_url('parcels/add_cheque_outwards');?>">
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
            </div>

            <div class="col-sm-12">
            <div class="form-group">
              <label for="Description">Description</label>
              <textarea name="description" id="description" cols="5" rows="3" class="form-control"></textarea>
            
            </div>
        </div>
        <div class="col-sm-12">
            <div class="form-group">
              <label for="Sender">Sent to(To)</label>
              <input type="text" name="receiver" class="form-control" placeholder="Sender">
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

