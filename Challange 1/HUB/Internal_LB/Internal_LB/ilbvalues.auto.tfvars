#========================Internal LB External=====================#
tags = {
  "AppID"              = "Core"
  "SupportGroup"       = "ADCS.Cloud.Infrastructure"
  "Role"               = "CORE"
  "Environment"        = "nonprd"
  "DataClassification" = "Confidential"
  "BillTo"             = "ADS"
}

##########################

region                  = "centralus"
vnet_resource_group_name = "rg-ads-cus-core-nonprd-nw-001"
vnet_name               = "vnet-ads-cus-core-nonprd-001"
resource_group_name      = "rg-ads-cus-core-nonprd-ngfw-001"
allocation_method       = "static"

lb_rule_protocol = "All"
lb_rule_load_distribution = "SourceIPProtocol"
lb_probe_fe_port = 443
lb_probe_be_port = 443
lb_probe_port = 443
frontend_ip_address_version = "IPv4"
ip_address_assignment      = "Static"
lb_sku     = "Standard"

# Probes
lb_probe_name = "hp-fw-trusted-tcp-443"


#========================Internal LB External=====================#


# LB 
intlb_name = "ilb-ads-cus-ngfw-nonprd-priv-ext-001"


# FE 
frontend_ip_configuration_name = ["fe-fw-inet-trusted"]
frontend_ip_configuration_ip   = ["10.176.1.124"]
subnet             = ["sn-ads-cus-core-nonprd-priv-001"]

# BE 
backend_pool_name = [ "be-fw-inet-trusted" ]

# NICs to add
nic = [ "Azure-NPRD-CUS-INET-EF03-002-trust-nic","Azure-NPRD-CUS-INET-EF04-002-trust-nic" ]

# Rules

lb_rule_name = [
  "lbr-fw-inet-all"
]



##### ILB

intlb_name_01 = "ilb-ads-cus-ngfw-nonprd-priv-int-001"


frontend_ip_configuration_name_01 = ["fe-fw-vfw-trusted","fe-fw-vpn-trusted","fe-fw-vpn-vpn"]
frontend_ip_configuration_ip_01   = ["10.176.1.123","10.176.1.122","10.176.0.254"]
subnet_01                         = ["sn-ads-cus-core-nonprd-priv-001","sn-ads-cus-core-nonprd-priv-001","sn-ads-cus-core-nonprd-vpn-001"]
backend_pool_name_01 = ["be-fw-vfw-trusted","be-fw-vpn-trusted","be-fw-vpn-vpn"]

lb_rule_name_01 = [
  "lbr-fw-vfw-all",
  "lbr-fw-vpn-trusted-all",
  "lbr-fw-vpn-vpn-all"
]

nic_01 = [ "Azure-NPRD-CUS-VFW-IF01-002-trust-nic", "Azure-NPRD-CUS-VPN-EF01-002-trust-nic", "Azure-NPRD-CUS-VPN-EF01-002-vpn-nic",
           "Azure-NPRD-CUS-VFW-IF02-002-trust-nic", "Azure-NPRD-CUS-VPN-EF02-002-trust-nic", "Azure-NPRD-CUS-VPN-EF02-002-vpn-nic" ]
