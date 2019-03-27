<div id="page-content" class="p20 row">

    <div class="col-sm-3 col-lg-2">
        <?php
        $tab_view['active_tab'] = "due_for_disposal";
        $this->load->view("assets_inventory/tabs", $tab_view);
        ?>
    </div>

    <div class="col-sm-9 col-lg-10">
        <div class="panel panel-default">
            <div class="page-title clearfix">
                <h1>Assets Due for Disposal</h1>
                <a href="<?php echo base_url('inventory_assets/print_due_disposal');?>" class="btn btn-info btn-sm pull-right"><i class="fa fa-print"> Download Report</i></a>

            </div>
            <div class="table-responsive">
                <table class="table table-striped table-bordered" id="jt" style="width: 100%">
                    <thead>
                    <tr>

                        <th>#</th>
                        <th>Code</th>
                        <th>Description</th>
                        <th>Purchase Date</th>
                        <th>Purchase Price</th>
                        <th>Actions</th>

                    </tr>
                    </thead>
                    <tbody>


                    <?php foreach($disposals as $disposal) {?>
                        <tr>
                            <td><?php echo $disposal->idAssetNo;?></td>
                            <td><?php echo $disposal->cAssetCode;?></td>
                            <td><?php echo $disposal->cAssetDesc;?></td>
                            <td><?php echo $disposal->dPurchaseDate;?></td>
                            <td><?php echo $disposal->fPurchaseValue;?></td>
                            <td> </td>

                        </tr>
                    <?php }?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#jt').DataTable();
        } );

        $('#newmenu').click(function() {
            document.location = '<?php echo site_url('inventory_assets/import_assets');?>';
        } );

    </script>
