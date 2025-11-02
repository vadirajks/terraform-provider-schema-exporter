resource "azurerm_spring_cloud_app_mysql_association" "name" {
  database_name = string (Required)
  mysql_server_id = string (Required)
  name = string (Required)
  password = string (Required)
  spring_cloud_app_id = string (Required)
  username = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
