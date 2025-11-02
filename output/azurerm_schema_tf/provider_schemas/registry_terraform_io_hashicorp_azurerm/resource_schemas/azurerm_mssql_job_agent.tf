resource "azurerm_mssql_job_agent" "name" {
  database_id = string (Required)
  location = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  sku = string (Optional)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    identity_ids = ['set', 'string'] (Required)
    type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
