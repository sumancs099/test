variable "subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}


variable "region" {
  type        = string
  description = "Location"
}

variable "resource_group_name" {
  type        = string
  description = "Load Balancer Resource Group Name"
}

variable "allocation_method" {
  type        = string
  description = "Allocation Method"
}
variable "tags" {
  type        = map(string)
  description = "Tags"
}
variable "frontendname" {
  type        = string
  description = "Frontend IP Configuration Name"
}

variable "frontendname_fmc" {
  type        = string
  description = "Frontend IP Configuration Name"
}

variable "be_pool_name_fmc" {
  type        = string
  description = "External LoadBalancer Backend Pool Name"
}

variable "public_ip_name_fmc" {
  type        = string
  description = "Public ip name"
}

variable "lb_rule_name_fmc" {
  type        = string
  description = "lb rule Name"
}

variable "enable_floating_ip_fmc" {
  type = bool 
  description = "To enable Floating IPs"
}

variable "frontendname_fmc_sit" {
  type        = string
  description = "Frontend IP Configuration Name"
}

variable "be_pool_name_fmc_sit" {
  type        = string
  description = "External LoadBalancer Backend Pool Name"
}

variable "public_ip_name_fmc_sit" {
  type        = string
  description = "Public ip name"
}

variable "lb_rule_name_fmc_sit" {
  type        = string
  description = "lb rule Name"
}

variable "enable_floating_ip_fmc_sit" {
  type = bool 
  description = "To enable Floating IPs"
}

variable "extlb_name" {
  type        = string
  description = "External LoadBalancer Name"
}

variable "be_pool_name" {
  type        = string
  description = "External LoadBalancer Backend Pool Name"
}

variable "lb_sku" {
  type        = string
  description = "The SKU of the Azure Load Balancer"
}

variable "public_ip_name" {
  type        = string
  description = "Public ip name"
}


variable "lb_probe_name" {
  type        = string
  description = "lb probe Name"
}

variable "lb_probe_port" {
  type        = number
  description = "lb probe Port"
}

variable "lb_rule_name" {
  type        = string
  description = "lb rule Name"
}

variable "lb_rule_protocol" {
  type        = string
  description = "lb rule protocol Name"
}

variable "lb_rule_fe_port" {
  type        = number
  description = "lb rule fe Port"
}

variable "lb_rule_be_port" {
  type        = number
  description = "lb rule be Port"
}


variable "nic" {
  type        = list(string)
  description = "list of NICs for backend pool"
}

variable "enable_floating_ip" {
  type = bool 
  description = "To enable Floating IPs"
}

##### NOT NEEDED

// variable "lb_probe_fe_port" {
//   type        = number
//   description = "lb probe fe Port"
// }

// variable "lb_probe_be_port" {
//   type        = number
//   description = "lb probe be Port"
// }

variable "vnet_resource_group_name" {
  type        = string
  description = "NOTNEEDED"
}

variable "subnet_name" {
  type        = string
  description = "NOTNEEDED"
}

variable "vnet_name" {
  type        = string
  description = "NOTNEEDED"
}
