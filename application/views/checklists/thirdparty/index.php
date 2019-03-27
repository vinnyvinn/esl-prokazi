<div id="page-content" class="p20 clearfix">
    <div class="panel panel-default">
        <div class="page-title clearfix">
            <h1>Third Level Support Reports</h1>
            <a href="<?php echo base_url('ict_reports/print_ticket');?>" class="href btn btn-info btn-sm pull-right"><i class="fa fa-print"></i> Download Report</a>
        </div>
        <div class="table-responsive">
            <table id="ict_reports_third_party-table" class="display" cellspacing="0" width="100%">            
            </table>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {

        $("#ict_reports_third_party-table").appTable({
            source: '<?php echo_uri("ict_reports/third_party_list_data") ?>',
            
                   columns: [
                    {title: "ID", "class": "text-center w50"},
                    {title: "Subject"},
                    {title: "Message"},
                    {title: "Ticket Type"},
                    {title: "Assigned To"},
                    {title: "Email"},
                    {title: "Phone"},
                    {title: "Date"},
                    {title: "Status"},
                    

                ],
            // order: [[1, "desc"]],
            printColumns: [0, 1, 2, 3, 4, 5],
            xlsColumns: [0, 1, 2, 3, 4, 5]
        });
    });
</script>
