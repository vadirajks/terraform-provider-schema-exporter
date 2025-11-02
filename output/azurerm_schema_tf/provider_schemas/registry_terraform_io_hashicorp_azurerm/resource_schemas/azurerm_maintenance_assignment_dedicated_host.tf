resource "azurerm_maintenance_assignment_dedicated_host" "name" {
  dedicated_host_id = string (Required)
  location = string (Required)
  maintenance_configuration_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
