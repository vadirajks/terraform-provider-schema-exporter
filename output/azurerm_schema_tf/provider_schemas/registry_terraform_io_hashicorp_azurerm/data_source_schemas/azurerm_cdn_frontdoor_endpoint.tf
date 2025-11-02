data "azurerm_cdn_frontdoor_endpoint" "name" {
  name = string (Required)
  profile_name = string (Required)
  resource_group_name = string (Required)
  enabled = bool (Computed)
  host_name = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
