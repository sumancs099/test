# ----------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these values.
# ----------------------------------------------------------------------------------------------------------------------

### Global Variables
variable "location" {
  type        = string
  description = "Azure Region in which to deploy NSG"
}
variable "resource_group_name" {
  type        = string
  description = "Name of resource group in which to deploy NSG"
}
variable "nsg_name" {
  type        = string
  description = "Name of NSG to be deployed"
}
variable "subnet_address_space" {
  description = "List of CIDR Blocks representing the address space of the subnet where this NSG will be attached"
  type        = list(string)
}

/*variable "tags" {
  type        = map(any)
  description = "Tags to be applied to NSG resource"
}*/

# ----------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults and some information will be populated from workspace
# ----------------------------------------------------------------------------------------------------------------------

variable "non_default_rules_for_this_NSG" {
  description = "Optional: List of objects representing NSG rules beyond the common set that the module already provides. NOTE: As with the default behavior of the underlying 'azurerm_network_security_rule' resource, caller must pass only one of prefix/prefixes/ASG for both source and destination, or else the Azure API will fail on creation. OK to pass empty strings for the others (as with CSV input); this module will convert to null appropriately."
  default     = []
  type = list(
    object(
      {
        priority                                   = number
        name                                       = string
        description                                = string
        direction                                  = string
        access                                     = string
        protocol                                   = string
        source_address_prefix                      = string
        source_address_prefixes                    = string
        source_port_range                          = string
        source_port_ranges                         = string
        source_application_security_group_ids      = string
        destination_address_prefix                 = string
        destination_address_prefixes               = string
        destination_port_range                     = string
        destination_port_ranges                    = string
        destination_application_security_group_ids = string
      }
    )
  )
}
