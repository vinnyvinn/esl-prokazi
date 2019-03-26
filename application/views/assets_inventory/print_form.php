<div class="container">
		<div class="row">
			<div class="col-sm-12">
<div class="panel panel-default text-center">

	<div class="panel panel-heading text-right"><span style="font-size: 26px;">ICT DEPARTMENT FORM
   <img src="<?php echo base_url('assets/images/esl.png');?>"></span>
  
	</div>
		    <b>Asset Form</b>
		<div class="panel panel-body">
				
			<ul class="list-group">
				<li class="list-group-item"><span style="font-size: 18px;"><b>To</b> : <?php echo $custodian['first_name'].' '.$custodian['last_name']?></span></li>
				<li class="list-group-item"><span style="font-size: 18px;"><b>From</b> : <?php echo $from['first_name'].' '.$from['last_name'];?></span></li>
				<li class="list-group-item"><span style="font-size: 18px;"><b>Copy</b> : <?php echo $hr['first_name'].' '.$hr['last_name'];?></span></li>
				<li class="list-group-item"><span style="font-size: 18px;"><b>Date</b> : <?php echo $asset['created_at'];?></span></li>
				<li class="list-group-item"><span style="font-size: 18px;"><b>Subject</b> : Company Assets Issued</span></li>
			</ul>

			<p><span style="font-size: 18px">Find below list of company assets issued to you;
<br>
1. <?php echo $asset['title'];?>
<br>
The above assets are under your care and supervision. You are required to take good care of them. They are to be returned to the company in good condition, fair, wear and tear exempted.
If the items are lost, the cost of the assets will be recovered from your salary at the end of that particular month you reported it lost.</span></p>
		<div class="form-group">
			
			<textarea name="comment" id="comment" cols="60" rows="5" placeholder="Comments"></textarea>
		</div>

		<p>Kindly sign below to acknowledgment receipt of these assets in your possession.</p> 

<p>Received by</p>

                                       
<p>Signature: ________________ Date:___________________</p>
	
Thank you,

	</div>
</div>
</div>
</div>
</div>
<script>
	$(document).ready(function () {
	window.print();
	 
});

</script>