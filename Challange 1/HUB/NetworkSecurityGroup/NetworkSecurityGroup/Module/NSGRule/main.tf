# ----------------------------------------------------------------------------------------------------------------------
# DEPLOY NSG RULE
# ----------------------------------------------------------------------------------------------------------------------

  /*################################################################
  Create individual rules by iterating over the combined
  "local.merged_rule_set" map. See locals.tf for the logic that
  assembles that map.

  Names of resources in state will be as follows:
  module.<NSG_Name>.azurerm_network_security_rule.rules["common_allow_in_any_within_subnet"]
  module.<NSG_Name>.azurerm_network_security_rule.rules["common_allow_in_icmp_ads_vnet"]
  ...
  ################################################################*/

resource "azurerm_network_security_rule" "rules" {

  for_each = local.merged_rule_set

  resource_group_name         = var.resource_group_name
  network_security_group_name = var.nsg_name

  name        = each.value.name
  priority    = each.value.priority
  description = each.value.description
  direction   = each.value.direction
  access      = each.value.access
  protocol    = each.value.protocol

  /*################################################################
  For all inputs: If null or "" is passed in, return null, else
  return the passed in value. For the plural ones (_prefixes, _ids),
  split  across commas that are passed in, resulting in a list.
  As mentioned in variables.tf, caller is responsible for only
  passing a value for *one* of prefix/prefixes/ASG for both
  source and destination.
  ################################################################*/
  source_address_prefix                      = each.value.source_address_prefix == "" || each.value.source_address_prefix == null ? null : each.value.source_address_prefix
  source_address_prefixes                    = each.value.source_address_prefixes == "" || each.value.source_address_prefixes == null ? null : split(",", each.value.source_address_prefixes)
  source_application_security_group_ids      = each.value.source_application_security_group_ids == "" || each.value.source_application_security_group_ids == null ? [] : split(",", each.value.source_application_security_group_ids)
  source_port_range                          = each.value.source_port_range == "" || each.value.source_port_range == null ? null : each.value.source_port_range
  source_port_ranges                         = each.value.source_port_ranges == "" || each.value.source_port_ranges == null ? null : split(",", each.value.source_port_ranges)
  destination_address_prefix                 = each.value.destination_address_prefix == "" || each.value.destination_address_prefix == null ? null : each.value.destination_address_prefix
  destination_address_prefixes               = each.value.destination_address_prefixes == "" || each.value.destination_address_prefixes == null ? null : split(",", each.value.destination_address_prefixes)
  destination_application_security_group_ids = each.value.destination_application_security_group_ids == "" || each.value.destination_application_security_group_ids == null ? [] : split(",", each.value.destination_application_security_group_ids)
  destination_port_range                     = each.value.destination_port_range == "" || each.value.destination_port_range == null ? null : each.value.destination_port_range
  destination_port_ranges                    = each.value.destination_port_ranges == "" || each.value.destination_port_ranges == null ? null : split(",", each.value.destination_port_ranges)
}
