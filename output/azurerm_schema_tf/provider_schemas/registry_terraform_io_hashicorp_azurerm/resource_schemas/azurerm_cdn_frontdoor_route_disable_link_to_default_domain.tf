resource "azurerm_cdn_frontdoor_route_disable_link_to_default_domain" "name" {
  cdn_frontdoor_custom_domain_ids = ['list', 'string'] (Required)
  cdn_frontdoor_route_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
