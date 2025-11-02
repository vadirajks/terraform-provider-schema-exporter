resource "azurerm_sql_elasticpool" "name" {
  dtu = number (Required)
  edition = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  server_name = string (Required)
  creation_date = string (Computed)
  db_dtu_max = number (Optional, Computed)
  db_dtu_min = number (Optional, Computed)
  id = string (Optional, Computed)
  pool_size = number (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
