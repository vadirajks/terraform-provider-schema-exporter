data "azurerm_cdn_frontdoor_secret" "name" {
  name = string (Required)
  profile_name = string (Required)
  resource_group_name = string (Required)
  cdn_frontdoor_profile_id = string (Computed)
  id = string (Optional, Computed)
  secret = ['list', ['object', {'customer_certificate': ['list', ['object', {'expiration_date': 'string', 'key_vault_certificate_id': 'string', 'subject_alternative_names': ['list', 'string']}]]}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
