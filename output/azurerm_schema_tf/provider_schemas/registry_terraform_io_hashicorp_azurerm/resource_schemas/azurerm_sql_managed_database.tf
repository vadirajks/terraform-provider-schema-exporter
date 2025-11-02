resource "azurerm_sql_managed_database" "name" {
  location = string (Required)
  name = string (Required)
  sql_managed_instance_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
