resource "azurerm_cdn_frontdoor_secret" "name" {
  cdn_frontdoor_profile_id = string (Required)
  name = string (Required)
  cdn_frontdoor_profile_name = string (Computed)
  id = string (Optional, Computed)

  secret block "list" (Required) {

    customer_certificate block "list" (Required) {
      key_vault_certificate_id = string (Required)
      subject_alternative_names = ['list', 'string'] (Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
