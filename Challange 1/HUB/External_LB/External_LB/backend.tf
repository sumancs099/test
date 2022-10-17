terraform {
  backend "remote" {
    organization = "alliancedata"

    workspaces {
      name = "ws-ads-cus-core-baseinfra-ext-loadbalancer-qa-001"
    }
  }
}