terraform {
  backend "remote" {
    organization = "alliancedata"

    workspaces {
      name = "ws-ads-cus-core-baseinfra-int-loadbalancer-qa-001"
    }
  }
}