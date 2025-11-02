data "azurerm_cdn_frontdoor_custom_domain" "name" {
  name = string (Required)
  profile_name = string (Required)
  resource_group_name = string (Required)
  cdn_frontdoor_profile_id = string (Computed)
  dns_zone_id = string (Computed)
  expiration_date = string (Computed)
  host_name = string (Computed)
  id = string (Optional, Computed)
  tls = ['list', ['object', {'cdn_frontdoor_secret_id': 'string', 'certificate_type': 'string', 'minimum_tls_version': 'string'}]] (Computed)
  validation_token = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
