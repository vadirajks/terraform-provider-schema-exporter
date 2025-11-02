data "azurerm_mssql_failover_group" "name" {
  name = string (Required)
  server_id = string (Required)
  databases = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  partner_server = ['list', ['object', {'id': 'string', 'location': 'string', 'role': 'string'}]] (Computed)
  read_write_endpoint_failover_policy = ['list', ['object', {'grace_minutes': 'number', 'mode': 'string'}]] (Computed)
  readonly_endpoint_failover_policy_enabled = bool (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
