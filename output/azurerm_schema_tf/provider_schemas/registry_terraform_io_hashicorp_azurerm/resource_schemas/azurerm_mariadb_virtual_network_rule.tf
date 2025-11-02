resource "azurerm_mariadb_virtual_network_rule" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  server_name = string (Required)
  subnet_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
