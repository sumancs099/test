variable "location" {}
variable "nwrgname" {}
variable "pepname" {}
variable "pepsubnetname" {}
variable "pepvnetname" {}
variable "peprgname" {}
variable "resourceid" {}
variable "IsManualConnectionForPeP" {}
variable "pepSubResourceName" {}
variable "enable_pep" {
  description = "If set to true, enable PrivateEndPoint"
  type        = bool
  default     = true
}
variable "tags" {
  description = "The tags to associate with Private End Point"
  type        = map(string)
}