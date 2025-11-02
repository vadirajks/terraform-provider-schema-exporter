resource "azurerm_mssql_firewall_rule" "name" {
  end_ip_address = string (Required)
  name = string (Required)
  server_id = string (Required)
  start_ip_address = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
