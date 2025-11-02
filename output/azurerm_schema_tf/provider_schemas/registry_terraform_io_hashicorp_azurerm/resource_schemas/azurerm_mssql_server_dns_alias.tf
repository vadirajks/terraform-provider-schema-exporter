resource "azurerm_mssql_server_dns_alias" "name" {
  mssql_server_id = string (Required)
  name = string (Required)
  dns_record = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
