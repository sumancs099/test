
terraform {
  backend "remote" {
    organization = "alliancedata"

    workspaces {
      name = "ws-ads-cus-core-peering-qa-001"
    }
  }
}
