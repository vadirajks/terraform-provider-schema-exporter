resource "azurerm_mysql_flexible_server_firewall_rule" "name" {
  end_ip_address = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  server_name = string (Required)
  start_ip_address = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
