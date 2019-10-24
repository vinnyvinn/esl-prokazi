<h4><i class="fa fa-desktop"></i> Monitoring Outages</h4>
<ul class="nav nav-tabs vertical" role="tablist">
    <li role="presentation" class="<?php echo ($active_tab == 'email') ? 'active' : ''; ?>"><a href="<?php echo_uri("monitoring_outages/email"); ?>"><span class="label label-info">Email Server</span></a></li>
    <li role="presentation" class="<?php echo ($active_tab == 'internet') ? 'active' : ''; ?>"><a href="<?php echo_uri("monitoring_outages/internet"); ?>"><span class="label label-success">Internet Server</span></a></li>
    <li role="presentation" class="<?php echo ($active_tab == 'erp') ? 'active' : ''; ?>"><a href="<?php echo_uri("monitoring_outages/erp"); ?>"><span class="label label-primary">Erp Server</span></a></li>
    <li role="presentation" class="<?php echo ($active_tab == 'payroll') ? 'active' : ''; ?>"><a href="<?php echo_uri("monitoring_outages/payroll"); ?>"><span class="label label-warning">Payroll Server</span></a></li>
    <li role="presentation" class="<?php echo ($active_tab == 'smartship') ? 'active' : ''; ?>"><a href="<?php echo_uri("monitoring_outages/smartship"); ?>"><span class="label label-default">Smartship Server</span></a></li>
</ul>
