

######################## Virtual Network Values



  dns_servers = ["10.91.200.30", "10.91.200.31", "10.131.199.30", "10.131.199.31"]
  location = "centralus"
  nwrgname = "rg-ads-cus-core-nonprd-nw-001"
  nwtags = {
    "AppID"              = "Network"
    "BillTo"             = "ADS"
  }
  virtual_network_name = "vnet-ads-cus-core-int-nonprd-001" 
  vnet_address_space = ["10.176.0.0/20"]

  
virtual_network_ext_name = "vnet-ads-cus-core-ext-nonprd-002 " 
  vnet_address_space_ext = ["10.176.128.0/22"]
  
  

############################ Public Subnet Value

pub_subnet_name = "sn-ads-cus-core-nonprd-pub-001"
pub_address_prefixes = ["10.176.0.0/25"]
pub_service_endpoints = [""]


############################ VPN Subnet Variables

vpn_subnet_name = "sn-ads-cus-core-nonprd-vpn-001"
vpn_address_prefixes = ["10.176.0.128/25"]
vpn_service_endpoints = [""]

############################# Private Subnet Variables

priv_subnet_name = "sn-ads-cus-core-nonprd-priv-001"
priv_address_prefixes = ["10.176.1.0/25"]
priv_service_endpoints = [""]

############################ Management Subnet Variables

mgmt_subnet_name = "sn-ads-cus-core-nonprd-mgmt-001"
mgmt_address_prefixes = ["10.176.1.128/25"]
mgmt_service_endpoints = [""]


############################ Security Subnet Variables
sec_subnet_name = "sn-ads-cus-core-nonprd-sec-001"
sec_address_prefixes = ["10.176.2.128/25"]
sec_service_endpoints = [""]

############################ NET Subnet Variables
net_subnet_name = "sn-ads-cus-core-nonprd-net-001"
net_address_prefixes = ["10.176.3.0/25"]
net_service_endpoints = [""]

############################ Gateway Subnet Variables
gw_subnet_name = "GatewaySubnet"
gw_address_prefixes = ["10.176.3.128/25"]
gw_service_endpoints = [""]

############################ PrivateEndPoint Subnet Variables
pep_subnet_name = "sn-ads-cus-core-nonprd-pep-001"
pep_address_prefixes = ["10.176.4.0/25"]
pep_service_endpoints = [""]

############################# SharedService Subnet Variables
ss_subnet_name = "sn-ads-cus-core-nonprd-ss-001"
ss_address_prefixes = ["10.176.4.128/25"]
ss_service_endpoints = [""]


