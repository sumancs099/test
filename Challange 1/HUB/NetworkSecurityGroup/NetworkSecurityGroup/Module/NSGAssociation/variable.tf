# ----------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these values.
# ----------------------------------------------------------------------------------------------------------------------

### NSG
variable "nsg_name" {
  type = string
  description = "Name of the Network Security Group"
}
variable "nsg_rg_name" {
  type = string
  description = "Resource group name for the NSG associate"
}

### Network
variable "vnet_name" {
  type = string
  description = "Name of the vNet"
}
variable "vnet_rg_name" {
  type = string
  description = "Resource group name for the vNet"
}
variable "sn_name" {
  type = string
  description = "Name of subnet network"
}


# ----------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults and some information will be populated from workspace
# ----------------------------------------------------------------------------------------------------------------------
