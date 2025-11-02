resource "azurerm_mysql_server_key" "name" {
  key_vault_key_id = string (Required)
  server_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
