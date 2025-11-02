resource "azurerm_active_directory_domain_service_replica_set" "name" {
  domain_service_id = string (Required)
  location = string (Required)
  subnet_id = string (Required)
  domain_controller_ip_addresses = ['list', 'string'] (Computed)
  external_access_ip_address = string (Computed)
  id = string (Optional, Computed)
  service_status = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
