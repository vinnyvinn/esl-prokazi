<div class="modal-body clearfix">
   <div class="panel panel-default">
    <div class="panel-heading" style="margin-top: -8px">Fuel Reports
        <?php echo anchor(get_uri("fuel_reports/print_report"), "<i class='fa fa-file-pdf-o pdfcolor'></i> " .'Export Pdf', array("class" => "btn btn-info pull-right rq")); ?>
        <?php echo anchor(get_uri("fuel_reports/extract_fuel"), "<i class='fa fa-file-excel-o pdfcolor'></i> " .'Export Excel', array("class" => "btn btn-info pull-right rq walla")); ?>
  </div>
<img src="<?php echo base_url('/assets/images/esl.png');?>"  alt="esl logo" class="pull-right">
<div class="panel-body">
   <div class="row">
    <?php foreach ($all_data as $data) {?>
    <div class="col-sm-12">
        <div class="panel-heading">
            <label>Driver : <?php echo $data['user']['name']; ?>
             
            </label>
            <br>
            
        </div>
        <table class="table table-striped table-bordered dataTable"  style="width: 100%">
           <thead>
             <tr>
               <th>Vehicle</th>
               <th>Date</th>
               <th>Invoice No.</th>
               <th>Litres</th>
               <th>Pump Price</th>
               <th>Cost</th>
               <th>Mileage</th>
               <th>Others</th>
               <th>Cost</th>

           </tr>
       </thead> 
       <tbody>
          <?php foreach ($data['details'] as $key => $report) {?>
          
          <tr>
           <td><?php echo $report['vehicle']?></td>
           <td><?php echo nice_date($report['date_created'], 'Y-m-d')?></td>
           <td><?php echo $report['invoice_no']?></td>
           <td><?php echo $report['litres']?></td>
           <td><?php echo $report['price']?></td>
           <td><?php echo $report['total']?></td>
           <td><?php echo $report['km_reading'] ? number_format($report['km_reading'],2) .' km' : number_format($report['miles_reading']/0.621371,2).' miles'?></td>
            <td><?php echo $report['expenses']?></td>
           <td><?php echo $report['expense_cost']?></td>


       </tr>
       <!-- <p>total: <?php //echo $report['totalcost']?></p> -->
       <?php }?>
   </tbody>
   <tfoot>
 <tr>
     <td>Total</td>
     <td></td>
     <td></td>
     <td></td>
     <td><?php echo $data['totalvalue'];?></td>
     <td></td>
     <td></td>
     <td></td>
     <td><?php echo $data['totalexpense'];?></td>
 </tr>
</tfoot>     
</table>

</div>
<?php }?>
</div>
</div>
</div>
</div>
<link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/js/datatable/css/dataTables.bootstrap.min.css">
<style type="text/css">
.pdfcolor{
    color: red;
}
</style>
<script type="text/javascript">
    $(document).ready(function() {
        $('.dataTable').DataTable();
    } );
</script>
