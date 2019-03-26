<div class="panel panel-default">
  <div class="panel panel-heading">Inwards Parcels
  </div>
  <div class="panel panel-body">
    <table id="items_table" class="table-striped table-bordered">
      <thead>
      <tr>
        
        <th>#</th>
        <th>Title</th>
        <th>Description</th>
        <th>Receiver</th>
        <th>Sender</th>
        <th>Date</th>
        <th>Status</th>
        <td>Collected</td>
        <th>Actions</th>
      </tr>
      <thead>
        <?php foreach ($parcels as $parcel) {?>
      <tbody>
          
        <tr>
          <td><?php echo $parcel->id;?></td>
          <td><?php echo $parcel->title;?></td>
          <td><?php echo $parcel->description;?></td>
          <td><a href="<?php echo base_url('parcels/view_inward/'.$parcel->id);?>" class="label label-info"><?php echo $parcel->received;?></a></td>
          <td><?php echo $parcel->sender;?></td>
          <td><?php echo $parcel->created_at;?></td>
          <td>
            <?php echo $parcel->status == 1 ? "<span class=\"btn btn-success btn-sm\">Accepted</span>" :
            ($parcel->status == 2 ? "<span class=\"btn btn-warning btn-sm\">Rejected" : "<span class=\"btn btn-info btn-sm\">Processing")

            ?>
         </td>
         <td><?php echo $parcel->status==1 ? 'Collected' : 'Not Collected'?></td>
          <td>
            <?php if(!$parcel->status==1 || !$parcel->status==2) {?>
            <a href="<?php echo base_url('parcels/accept_inwards/'.$parcel->id);?>" class="btn btn-info btn-xs"><i class="fa fa-check" data-toggle="tooltip" title="Accept"></i></a>
            <a href="<?php echo base_url('parcels/reject_inwards/'.$parcel->id);?>"class="btn btn-success btn-xs"><i class="fa fa-repeat" data-toggle="tooltip" title="Reject"></i></a>
            <a href="<?php echo base_url('parcels/delete_inwards/'.$parcel->id);?>" class="btn btn-danger btn-xs"><i class="fa fa-trash" data-toggle="tooltip" title="Remove"></i></a>
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

<script>
  $('#items_table').dataTable();

</script>

