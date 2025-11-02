resource "azurerm_mssql_managed_instance_failover_group" "name" {
  location = string (Required)
  managed_instance_id = string (Required)
  name = string (Required)
  partner_managed_instance_id = string (Required)
  id = string (Optional, Computed)
  partner_region = ['list', ['object', {'location': 'string', 'role': 'string'}]] (Computed)
  readonly_endpoint_failover_policy_enabled = bool (Optional)
  role = string (Computed)
  secondary_type = string (Optional)

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
