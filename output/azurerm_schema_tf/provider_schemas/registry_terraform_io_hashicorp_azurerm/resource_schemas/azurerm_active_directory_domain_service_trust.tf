resource "azurerm_active_directory_domain_service_trust" "name" {
  domain_service_id = string (Required)
  name = string (Required)
  password = string (Required)
  trusted_domain_dns_ips = ['list', 'string'] (Required)
  trusted_domain_fqdn = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
