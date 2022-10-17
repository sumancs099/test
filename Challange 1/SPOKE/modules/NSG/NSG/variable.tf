variable "nsgname" {
  type        = list(string)
  description = "Name of NSGs name"
}

variable "rgname" {
  type        = string
  description = "Name of resource group"
}

variable "location" {
  type        = string
  description = "Azure region/location to deploy NSG"
}

variable "tags" {
  type = map(string)
}
