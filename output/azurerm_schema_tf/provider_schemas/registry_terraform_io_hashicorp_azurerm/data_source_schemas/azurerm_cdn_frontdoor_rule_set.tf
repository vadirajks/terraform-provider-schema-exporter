data "azurerm_cdn_frontdoor_rule_set" "name" {
  name = string (Required)
  profile_name = string (Required)
  resource_group_name = string (Required)
  cdn_frontdoor_profile_id = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
