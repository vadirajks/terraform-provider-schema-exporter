resource "azurerm_cdn_endpoint_custom_domain" "name" {
  cdn_endpoint_id = string (Required)
  host_name = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  cdn_managed_https block "list" (Optional) {
    certificate_type = string (Required)
    protocol_type = string (Required)
    tls_version = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  user_managed_https block "list" (Optional) {
    key_vault_secret_id = string (Required)
    tls_version = string (Optional)
  }
}
