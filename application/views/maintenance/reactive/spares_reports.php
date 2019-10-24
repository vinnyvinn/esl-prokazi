<img src="./assets/images/esl.png" style="text-align: right;">
<h2>EXPRESS SHIPPING & LOGISTICS E.A.LTD</h2>
<center>
    Issuance Listing Report
</center>

</div>

<table class="table table-striped table-bordered"  style="width: 100%">
    <thead>
    <tr>
        <th>No.</th>
        <th>Requisition #</th>
        <th>Code</th>
        <th>Item name</th>
        <th>Quantity</th>
        <th>Description</th>
        <th>Total amount</th>
        <th>Date</th>
    </tr>
    </thead>
    <tbody>

    <?php foreach ($parts as $p) {?>
        <tr>
            <td><?php echo $p->id?></td>
            <td><?php echo $p->requisition_no?></td>
            <td><?php echo $p->card_no?></td>
            <td><?php echo $p->stock_name?></td>
            <td><?php echo $p->qnty_out?></td>
            <td><?php echo $p->description?></td>
            <td><?php echo number_format($p->total,2)?></td>
            <td><?php echo nice_date($p->created, 'Y-m-d')?></td>

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
