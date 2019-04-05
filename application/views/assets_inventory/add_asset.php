<div class="container">
    <div class="row printA">
        <div class="col-xs-8 col-xs-offset-2">
<div class="panel panel-default">
    <div class="panel panel-heading">
        <span style="font-size: 26px;" class="pull-right"><h2 style="margin: -10px">ICT DEPARTMENT FORM
                <img src="<?php echo base_url('assets/images/esl.png');?>" style="width: 100px"></h2></span>

        <h1 class="text-center" style="margin-bottom: -10px;font-weight: 600">Asset Form</h1>
    </div>
    <div class="panel panel-body" style="padding-top: -0">
        <p style="font-size: 18px;"><strong>To : </strong><?php echo $custodian['first_name'].' '.$custodian['last_name']?></p>
        <p style="font-size: 18px;"><strong>From : </strong> <?php echo $from['first_name'].' '.$from['last_name'];?></p>
        <p style="font-size: 18px;"><strong>Copy : </strong><?php echo $hr['first_name'].' '.$hr['last_name'];?></p>
        <p style="font-size: 18px;"><strong>Date : </strong><?php echo date('d-m-Y',strtotime($asset['created_at']));?></p>
        <p style="font-size: 18px;"><strong>Subject : Company Assets Issued</strong></p>
        <hr style=" border: 1px solid black;margin-top: 0;">
<p>
    Find below list of company assets issued to you.
</p>
        <p>
            <ul class="list-group">
            <?php foreach ($assets as $item){?>
            <li class="list-group-item"><?php echo $item->title?></li>
            <?php }?>
        </ul>

         </p>
        <p>
            The above assets are under your care and supervision. You are required to take good care of them.
            They are to be returned to the company in good condition, fair, wear and tear exempted.
        </p>
        <p>
            If the items are lost, the cost of the assets will be recovered from your salary at the end of that particular month you reported it lost.
        </p>
        <p>
            <label for="">Comments</label>
            <textarea name="message" cols="10" rows="5" class="form-control" placeholder="Enter Comments">

            </textarea>
            Kindly sign below to acknowledgment receipt of these assets in your possession.
        </p>
        <p>Received by</p>
        <p>Signature:________________________ Date:___________________________</p>
        <p>Thank you,</p>
    </div>
</div>
        </div>
</div>
    <div class="form-group text-center">
        <button class="btn btn-outline-primary btn-primary" style="margin-top: -20px" id="print_button"><i class="fa fa-print"> Print Form</i></button>
    </div>
</div>

<script>

    $("#print_button").click(function(){
        var options = {mode:"popup",popHt: 500,   popWd: 400, popX: 500,   popY: 600,popTitle:"Assets Form",popClose: false};
        $("div.printA").printArea(options);
    });

</script>

