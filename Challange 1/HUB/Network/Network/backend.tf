terraform {
  backend "remote" {
    organization = "Sumancs099"

    workspaces {
      name = "baseinfra-network"
    }
  }
}
