resource "azurerm_cdn_frontdoor_rule_set" "name" {
  cdn_frontdoor_profile_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
