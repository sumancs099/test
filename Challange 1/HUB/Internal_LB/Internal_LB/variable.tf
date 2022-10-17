variable "subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "region" {
  type        = string
  description = "Location"
}
variable "vnet_resource_group_name" {
  type        = string
  description = "VNet Resource Group Name"
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
variable "intlb_name" {
  type        = string
  description = "Internal LoadBalancer Name"
}


variable "nic" {
  type        = list(string)
  description = "List of NICs to add to backend pool"
  default     = null
}

variable "lb_sku" {
  type        = string
  description = "The SKU of the Azure Load Balancer"
}


variable "frontend_ip_address_version" {
  type        = string
  description = "The frontend ip address version of the Azure Load Balancer"
}



variable "ip_address_assignment" {
  type        = string
  description = "The ip address assignment of the Azure Load Balancer"
}

variable "vnet_name" {
  type        = string
  description = "VNet Name"
}

variable "subnet" {
  type        = list(string)
  description = "SubNet Name"
}

variable "subnet_01" {
  type        = list(string)
  description = "SubNet Name"
}



variable "frontend_ip_configuration_name" {
  type        = list(string)
  description = "frontend ip config name"
}


variable "frontend_ip_configuration_ip" {
  type        = list(string)
  description = "frontend ip address"
}


variable "backend_pool_name" {
  type        = list(string)
  description = "Internal LoadBalancer Backend Pool Name"
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
  type        = list(string)
  description = "lb rule Name"
}

variable "lb_rule_protocol" {
  type        = string
  description = "lb rule protocol Name"
}

variable "lb_probe_fe_port" {
  type        = number
  description = "lb probe fe Port"
}

variable "lb_probe_be_port" {
  type        = number
  description = "lb probe be Port"
}

variable "intlb_name_01" {
  type        = string
  description = "Internal LoadBalancer Name"
}

variable "backend_pool_name_01" {
  type        = list(string)
  description = "Internal LoadBalancer Backend Pool Name"
}

variable "nic_01" {
  type        = list(string)
  description = "List of NICs to add to backend pool"
  default     = null
}

variable "lb_rule_name_01" {
  type        = list(string)
  description = "lb rule Name"
}


variable "frontend_ip_configuration_name_01" {
  type        = list(string)
  description = "frontend ip config name"
}


variable "frontend_ip_configuration_ip_01" {
  type        = list(string)
  description = "frontend ip address"
}


variable "lb_rule_load_distribution" {
  type        = string
  default     = "Default"
  description = "Specifies the load balancing distribution type to be used by the Load Balancer."
}