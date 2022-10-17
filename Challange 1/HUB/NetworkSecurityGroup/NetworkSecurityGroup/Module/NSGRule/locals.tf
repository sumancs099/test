locals {
  # Read in CSVs for IP lists
  Qualys_Scanner_IPs   = csvdecode(file("${path.module}/data_files/Qualys_Scanner_IPs.csv"))[*].IP
  OnPrem_Jump_Host_IPs = csvdecode(file("${path.module}/data_files/OnPrem_Jump_Host_IPs.csv"))[*].IP

  # Read in the common rules CSV, which comes in as a list of objects
  common_rules_csv_decoded = csvdecode(
    templatefile(
      "${path.module}/data_files/common_rules_for_all_NSGs.csv",
      {
        # Strings in CSV file are substituted as follows,
        # e.g. ${subnet_purpose} in CSV would be subbed for the value of
        # var.subnet_purpose that was passed into this module.
        # String substitution happens first via templatefile(), then
        # the results of that are passed into csvdecode().
        Qualys_Scanner_IPs   = "\"${join(",", local.Qualys_Scanner_IPs)}\""
        OnPrem_Jump_Host_IPs = "\"${join(",", local.OnPrem_Jump_Host_IPs)}\""
        This_Subnet          = "\"${join(",", var.subnet_address_space)}\""
      }
    )
  )

  # Convert above list of objects into list of maps [{"name" = {name = "name", access = "..."}}, ...]
  common_rules_for_all_NSGs_in_map_form = { for i in local.common_rules_csv_decoded : i.name => i }

  # Convert the input variable for instance-specific rules in the same way
  non_default_rules_for_this_NSG_in_map_form = { for i in var.non_default_rules_for_this_NSG : i.name => i }

  # Finally, merge the two tables.
  # NOTE: This has the effect that if a passed-in rule uses the same name as a common rule,
  # the passed-in rule "wins" by way of the behavior of merge().
  merged_rule_set = merge(local.common_rules_for_all_NSGs_in_map_form, local.non_default_rules_for_this_NSG_in_map_form)
}

