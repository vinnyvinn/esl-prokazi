<img src="./assets/images/esl.png" style="text-align: right;">
<h2>EXPRESS SHIPPING & LOGISTICS E.A.LTD</h2>
<center>
    Assets Due for Disposal Report
</center>

</div>

<table class="table table-striped table-bordered"  style="width: 100%">
    <thead>
    <tr>
    <th>#</th>
    <th>Code</th>
    <th>Description</th>
    <th>Purchase Date</th>
    <th>Purchase Price</th>



    </tr>
    </thead>
    <tbody>

    <?php foreach ($disposals as $disposal) {?>
        <tr>
            <td><?php echo $disposal->idAssetNo;?></td>
            <td><?php echo $disposal->cAssetCode;?></td>
            <td><?php echo $disposal->cAssetDesc;?></td>
            <td><?php echo date('d-m-Y',strtotime($disposal->dPurchaseDate));?></td>
            <td><?php echo $disposal->fPurchaseValue;?></td>
        </tr>
    <?php }?>

    </tbody>

</table>
<link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/js/datatable/css/dataTables.bootstrap.min.css">
<style type="text/css">
    .pdfcolor{
        color: red;
    }
</style>


<style>
    table {
        color: #333; /* Lighten up font color */
        font-family: Helvetica, Arial, sans-serif; /* Nicer font */
        width: 640px;
        border-collapse:
            collapse; border-spacing: 0;
    }

    td, th { border: 1px solid #CCC; height: 30px; } /* Make cells a bit taller */

    th {
        background: #F3F3F3; /* Light grey background */
        font-weight: bold; /* Make sure they're bold */
    }

    td {
        background: #FAFAFA; /* Lighter grey background */
        text-align: center; /* Center our text */
    }
</style>

<script>
    $(document).ready(function () {
        window.print();
    })
</script>
