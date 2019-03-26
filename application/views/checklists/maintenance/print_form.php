<img src="./assets/images/esl.png" style="text-align: right;">
<h2>EXPRESS SHIPPING & LOGISTICS E.A.LTD</h2>
<center>
    Maintenance Assets Report
</center>

</div>

<table class="table table-striped table-bordered"  style="width: 100%">
    <thead>
    <tr>
        <th>No.</th>
        <th>Asset</th>
        <th>Assigned To</th>
        <th>status</th>
        <th>Date</th>

    </tr>
    </thead>
    <tbody>

    <?php foreach ($assets_maintenance as $asset) {?>
        <tr>
            <td><?php echo $asset->id?></td>
            <td><?php echo $asset->sage_item_id?></td>
            <td><?php echo $asset->username?></td>
            <td><?php echo $asset->status == 0 ? 'Not Performed' : 'Performed'?></td>
            <td><?php $date=new DateTime($asset->created_at);
                 echo $date->format('m/d/y')?></td>
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
