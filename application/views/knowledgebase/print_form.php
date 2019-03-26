<img src="./assets/images/esl.png" style="text-align: right;">
<h2>EXPRESS SHIPPING & LOGISTICS E.A.LTD</h2>
<center>
    Knowledgebase Report
</center>

</div>

<table class="table table-striped table-bordered"  style="width: 100%">
    <thead>
    <tr>
        <th>No.</th>
        <th>Title</th>
        <th>Type</th>
        <th>solution</th>
        <th>Hits</th>
        <th>Date</th>

    </tr>
    </thead>
    <tbody>

    <?php foreach ($reports as $r) { ?>
        <tr>

            <td><?php echo $r->id ?></td>
            <td><?php echo $r->title ?></td>
            <td><?php echo $r->name ?></td>
            <td><?php echo $r->solution ?></td>
            <td><?php echo $r->hits ?></td>
            <td><?php echo $r->created_at ?></td>
        </tr>
    <?php } ?>

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
