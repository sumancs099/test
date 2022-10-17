variable "saname" {
    type = string
    description = "Storage Account Name"
}

variable "location" {
    type = string
    description = "Location"
}

variable "sargname" {
  type = string
}

variable "account_tier" {
    type = string
    description = "Storage Account Tier"
}

variable "account_replication_type" {
    type = string
    description = "Storage Account Replication Type"
}

variable "min_tls_version" {
    type = string
    description = "Minimum TLS Version"
}

variable "satags" {
    type = map(string)
    description = "Storage Account Tags"
}

