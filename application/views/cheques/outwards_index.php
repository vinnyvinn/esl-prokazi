<div class="panel panel-default">
	<div class="panel panel-heading">Outwards Cheques
	</div>
	<div class="panel panel-body">
		<table id="items_table" class="table-striped table-bordered">
			<thead>
				<tr>
					
					<th>#</th>
					<th>Title</th>
					<th>Amount</th>
					<th>From</th>
					<th>To</th>
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
								<td><?php echo $cheque->sender_name;?></td>
								<td><?php echo $cheque->receiver;?></td>
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
										<a href="<?php echo base_url('cheques/accept/'.$cheque->id);?>" class="btn btn-info btn-xs"><i class="fa fa-check" data-toggle="tooltip" title="Accept"></i></a>
										<a href="<?php echo base_url('cheques/reject/'.$cheque->id);?>"class="btn btn-success btn-xs"><i class="fa fa-repeat" data-toggle="tooltip" title="Reject"></i></a>
										<a href="<?php echo base_url('cheques/delete/'.$cheque->id);?>" class="btn btn-danger btn-xs"><i class="fa fa-trash" data-toggle="tooltip" title="Remove"></i></a>
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

