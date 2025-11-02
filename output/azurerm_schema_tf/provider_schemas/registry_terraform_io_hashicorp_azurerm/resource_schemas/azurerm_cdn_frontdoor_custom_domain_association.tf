resource "azurerm_cdn_frontdoor_custom_domain_association" "name" {
  cdn_frontdoor_custom_domain_id = string (Required)
  cdn_frontdoor_route_ids = ['list', 'string'] (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
