<img src="./assets/images/esl.png" style="text-align: right;">
<h2>EXPRESS SHIPPING & LOGISTICS E.A.LTD</h2>
<center>
    Checklists Report
</center>

</div>

<table class="table table-striped table-bordered"  style="width: 100%">
    <thead>
    <tr>
        <th>No.</th>
        <th>Vehicle</th>
        <th>Mileage</th>
        <th>Date</th>


    </tr>
    </thead>
    <tbody>
    <?php foreach ($checklists as  $checklist) {?>

        <tr>
            <td>
                <?php echo $checklist->id;?>
            </td>
            <td><?php echo $checklist->code;?>"</td>
            <td><?php echo $checklist->mileage .' '. $checklist->measurement;?></td>
            <td><?php echo $checklist->date;?></td>



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
