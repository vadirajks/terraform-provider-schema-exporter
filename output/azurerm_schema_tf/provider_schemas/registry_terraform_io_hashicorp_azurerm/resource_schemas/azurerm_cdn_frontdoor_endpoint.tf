resource "azurerm_cdn_frontdoor_endpoint" "name" {
  cdn_frontdoor_profile_id = string (Required)
  name = string (Required)
  enabled = bool (Optional)
  host_name = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
