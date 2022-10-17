variable "kvrgname" {
    type = string
    description = "Name of KeyVault resource group"
}

variable "kvname" {
  type        = string
  description = "Name of KeyVault"
}

# variable "secretname" {
#     type = string
#     description = "Name of Secret"
# }

# variable "secretvalue" {
#     type = string
#     description = "Value of Secret"
# }

variable "secret" {
    type = map(string)
    description = "Secret Values"
}