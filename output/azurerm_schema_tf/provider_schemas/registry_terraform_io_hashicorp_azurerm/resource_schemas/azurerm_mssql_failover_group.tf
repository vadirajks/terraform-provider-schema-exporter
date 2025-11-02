resource "azurerm_mssql_failover_group" "name" {
  name = string (Required)
  server_id = string (Required)
  databases = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  readonly_endpoint_failover_policy_enabled = bool (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  partner_server block "list" (Required) {
    id = string (Required)
    location = string (Computed)
    role = string (Computed)
  }

  read_write_endpoint_failover_policy block "list" (Required) {
    mode = string (Required)
    grace_minutes = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
