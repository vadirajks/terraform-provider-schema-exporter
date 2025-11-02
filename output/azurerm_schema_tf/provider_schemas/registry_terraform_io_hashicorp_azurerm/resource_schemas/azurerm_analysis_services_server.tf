resource "azurerm_analysis_services_server" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  admin_users = ['set', 'string'] (Optional)
  backup_blob_container_uri = string (Optional)
  id = string (Optional, Computed)
  power_bi_service_enabled = bool (Optional)
  querypool_connection_mode = string (Optional)
  server_full_name = string (Computed)
  tags = ['map', 'string'] (Optional)

  ipv4_firewall_rule block "set" (Optional) {
    name = string (Required)
    range_end = string (Required)
    range_start = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
