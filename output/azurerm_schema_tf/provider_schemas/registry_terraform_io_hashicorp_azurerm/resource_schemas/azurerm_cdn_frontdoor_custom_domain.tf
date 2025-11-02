resource "azurerm_cdn_frontdoor_custom_domain" "name" {
  cdn_frontdoor_profile_id = string (Required)
  host_name = string (Required)
  name = string (Required)
  dns_zone_id = string (Optional)
  expiration_date = string (Computed)
  id = string (Optional, Computed)
  validation_token = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  tls block "list" (Required) {
    cdn_frontdoor_secret_id = string (Optional, Computed)
    certificate_type = string (Optional)
    minimum_tls_version = string (Optional)
  }
}
