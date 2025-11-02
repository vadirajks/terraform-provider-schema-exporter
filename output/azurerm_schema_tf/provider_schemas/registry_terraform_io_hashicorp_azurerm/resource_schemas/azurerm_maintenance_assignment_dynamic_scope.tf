resource "azurerm_maintenance_assignment_dynamic_scope" "name" {
  maintenance_configuration_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  filter block "list" (Required) {
    locations = ['list', 'string'] (Optional)
    os_types = ['list', 'string'] (Optional)
    resource_groups = ['list', 'string'] (Optional)
    resource_types = ['list', 'string'] (Optional)
    tag_filter = string (Optional)

    tags block "list" (Optional) {
      tag = string (Required)
      values = ['list', 'string'] (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
