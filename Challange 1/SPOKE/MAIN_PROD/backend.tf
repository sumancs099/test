

terraform {
  backend "remote" {
    organization = "SUMAN"

    workspaces {
      name = "ws-ads-ncus-analytics-baseInfra-prd-001"
    }
  }
}
