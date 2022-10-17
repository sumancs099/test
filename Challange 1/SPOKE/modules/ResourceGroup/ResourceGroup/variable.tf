
variable "rgname" {
  type        = list(string)
  description = "To create Resource Group"
}

variable "location" {
  type = string
}

variable "tags" {
  type = map(string)
}
