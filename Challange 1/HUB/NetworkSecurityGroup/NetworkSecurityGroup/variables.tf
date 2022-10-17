# Resource Group Variables
variable "rgname" {
  type = list(string)
}
variable "rgtags" {
  type = map(string)
}

variable "location" {}

variable "secrgname" {}