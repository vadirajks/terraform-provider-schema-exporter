data "azurerm_sql_server" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  administrator_login = string (Computed)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)
  version = string (Computed)

  timeouts block "single"  (Optional){
    read = string (Optional)
  }
}
