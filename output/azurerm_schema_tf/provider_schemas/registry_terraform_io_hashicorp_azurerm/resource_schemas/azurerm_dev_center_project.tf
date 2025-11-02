resource "azurerm_dev_center_project" "name" {
  dev_center_id = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  dev_center_uri = string (Computed)
  id = string (Optional, Computed)
  maximum_dev_boxes_per_user = number (Optional)
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
