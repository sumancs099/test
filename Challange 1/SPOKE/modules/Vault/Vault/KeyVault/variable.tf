variable "kvrgname" {
    type = string
    description = "Name of KeyVault resource group"
}
variable "kvname" {
  type        = string
  description = "Name of KeyVault"
}
variable "location" {
  type = string
}
variable "kvdiskencryption" {
  type = bool
}
variable "kvsoftdelrentdays" {
  type = number
}
variable "kvpurgeprotectionenabled" {
  type = bool
}
variable "kvskuname" {
  type = string
}
variable "tags" {
  type        = map(string)
  description = "Tags for KeyVault"
}
