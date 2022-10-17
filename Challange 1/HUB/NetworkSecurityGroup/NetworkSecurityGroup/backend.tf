/*terraform {
  backend "azurerm" {
    resource_group_name  = "rg-ads-eus2-entbusops-dev-tfstatestg-001"
    storage_account_name = "sasadseus2entbusopsdev01"
    container_name       = "apimbuild-state"
    key                  = "infradev.tfstate"
  }
}*/


terraform {
  backend "remote" {
    organization = "alliancedata"

    workspaces {
      name = "ws-ads-cus-core-baseinfra-nsg-qa-001"
    }
  }
}
