resource "azurerm_eventgrid_system_topic" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  topic_type = string (Required)
  id = string (Optional, Computed)
  metric_arm_resource_id = string (Computed)
  metric_resource_id = string (Computed)
  source_arm_resource_id = string (Optional, Computed)
  source_resource_id = string (Optional, Computed)
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
