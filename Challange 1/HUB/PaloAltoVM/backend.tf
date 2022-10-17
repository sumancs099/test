terraform {
  backend "remote" {
    organization = "alliancedata"

    workspaces {
      name = "ws-ads-cus-core-baseinfra-paloalto-prd-001"
    }
  }
}