# Virtual Network Values
  nwtags = {
    "AppID"              = "Network"
    "DataClassification" = "Confidential"
    "BillTo"             = "ADS"
  }

  virtual_network_name  = "vnet-ads-cus-core-nonprd-001" 
  resource_group_name   = "rg-ads-cus-core-nonprd-nw-001"

  # FINISH IDs
  peers                 = {
   
    entbusops_perf_apim = {
      name = "CORE-SPOKE1"
      remote_virtual_network_id = "**********"
    },
    entbusops_partner_perf_apim = {
      name = "CORE-SPOKE2"
      remote_virtual_network_id = "*********"
    }

  }

