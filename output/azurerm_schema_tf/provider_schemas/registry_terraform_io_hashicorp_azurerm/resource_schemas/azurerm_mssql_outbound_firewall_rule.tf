resource "azurerm_mssql_outbound_firewall_rule" "name" {
  name = string (Required)
  server_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
