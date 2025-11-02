data "azurerm_dev_center_project" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Computed)
  dev_center_id = string (Computed)
  dev_center_uri = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  maximum_dev_boxes_per_user = number (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
