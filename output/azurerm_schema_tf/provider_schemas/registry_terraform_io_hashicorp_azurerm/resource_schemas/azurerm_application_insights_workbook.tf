resource "azurerm_application_insights_workbook" "name" {
  data_json = string (Required)
  display_name = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  category = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  source_id = string (Optional)
  storage_container_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
