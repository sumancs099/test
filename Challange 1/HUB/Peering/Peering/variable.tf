
variable "subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}

# Virtual Network Variables
variable "location" {
  type = string
  default = "eastus2"
}

variable "nwtags" {
  type = map(string)
}
variable "virtual_network_name" {
  type = string
}
variable "resource_group_name" {
  type = string
}

variable "peers" {
  type = map(object({
    name = string
    remote_virtual_network_id = string
    }))
  description = "Peer Resource IDs of networks to peer with"
}
