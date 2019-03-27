    <?php echo form_open('"id" = "create-parts-form", "class" = "general-form", "role" = "form"'); ?>
    <div class="modal-body clearfix">
    <div class="panel panel-default">
    <div class="panel-heading" style="margin-top: -8px">Departments
    <?php echo anchor(get_uri("departments/dept_form"), "<i class='fa fa-plus-circle'></i> " . 'Add Department', array("class" => "btn btn-default pull-right rq", "title" => 'Add Department')); ?>

    </div>
    </div>
    <div class="panel-body">
    <div class="row">
    <div class="col-sm-12">


    <table class="table table-striped table-bordered" id="jt" style="width: 100%">
    <thead>
    <tr>
    <?php $counter = 1;?>
    <th>No.</th>
    <th>Name</th>
    <th>Action</th>

    </tr>
    </thead> 
    <tbody>
    <?php foreach ($departments as  $dept) {?>

    <tr>
    <td>
      <?php echo $counter++;?> 
    </td>
    <td><?php echo $dept->name;?></td>
    <td>
      <a href="<?php echo base_url('departments/modify_form/'.$dept->id);?>" class="btn btn-success btn-xs"><i class="fa fa-edit">Edit</i></a>
      <a href="<?php echo base_url('departments/trash/'.$dept->id);?>" class="btn btn-danger btn-xs"><i class="fa fa-trash">Delete</i></a>
    </td>


    </tr>
    <?php }?>
    </tbody>     
    </table>

    </div>
    </div>
    </div>
    </div>
    </div>
    <link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/js/datatable/css/dataTables.bootstrap.min.css">

    <script type="text/javascript">
    $(document).ready(function() {
    $('#jt').DataTable();
    } );
    </script>

