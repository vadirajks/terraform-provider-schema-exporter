resource "azurerm_sql_failover_group" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  server_name = string (Required)
  databases = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  location = string (Computed)
  role = string (Computed)
  tags = ['map', 'string'] (Optional)

  partner_servers block "list"  (Required){
    id = string (Required)
    location = string (Computed)
    role = string (Computed)
  }

  read_write_endpoint_failover_policy block "list"  (Required){
    mode = string (Required)
    grace_minutes = number (Optional)
  }

  readonly_endpoint_failover_policy block "list"  (Optional){
    mode = string (Required)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
