region                  = "centralus"
resource_group_name      = "rg-ads-cus-core-nonprd-ngfw-001" 
allocation_method       = "static"
tags = {
  "AppID"              = "Core"
  "SupportGroup"       = "ADCS.Cloud.Infrastructure"
  "Role"               = "CORE"
  "Environment"        = "nonprd"
  "DataClassification" = "Confidential"
  "BillTo"             = "ADS"
}
frontendname = "fe-fw-inet-untrusted"
extlb_name   = "elb-ads-cus-ngfw-nonprd-pub-001"
lb_sku       = "Standard"

be_pool_name  = "be-fw-inet-untrusted"
lb_probe_name = "hp-fw-inet-tcp-443"
lb_probe_port = 443


lb_rule_name     = "lbr-fw-inet-tcp-443"
lb_rule_protocol = "TCP"
lb_rule_fe_port = 443
lb_rule_be_port = 443
enable_floating_ip = true

frontendname_fmc = "fe-fw-inet-untrusted-fmc"
be_pool_name_fmc  = "be-fw-inet-untrusted-fmc"
lb_rule_name_fmc     = "lbr-fw-inet-tcp-443-fmc"
public_ip_name_fmc = "pip-elb-ads-cus-ngfw-nonprd-fmc-001"
enable_floating_ip_fmc = true

frontendname_fmc_sit = "fe-fw-inet-untrusted-fmc_sit"
be_pool_name_fmc_sit  = "be-fw-inet-untrusted-fmc_sit"
lb_rule_name_fmc_sit     = "lbr-fw-inet-tcp-443-fmc_sit"
public_ip_name_fmc_sit = "pip-elb-ads-cus-ngfw-sit-fmc-001"
enable_floating_ip_fmc_sit = true

public_ip_name = "pip-elb-ads-cus-ngfw-nonprd-pub-001"


nic = ["Azure-NPRD-CUS-INET-EF03-002-untrust-nic","Azure-NPRD-CUS-INET-EF04-002-untrust-nic"]


