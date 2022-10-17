
variable "vnetname" {
  description = "Name of the vnet to create."
  type        = string
}

variable "rgname" {
  description = "The name of an existing resource group to be imported."
  type        = string
}

variable "vnetaddress" {
  #description = "The address space that is used by the virtual network."
  #type        = string
}

variable "location" {

}

variable "dns" {}

variable "tags" {
  type = map(string)
}
