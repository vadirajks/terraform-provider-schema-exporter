resource "azurerm_mysql_database" "name" {
  charset = string (Required)
  collation = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  server_name = string (Required)
  id = string (Optional, Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
