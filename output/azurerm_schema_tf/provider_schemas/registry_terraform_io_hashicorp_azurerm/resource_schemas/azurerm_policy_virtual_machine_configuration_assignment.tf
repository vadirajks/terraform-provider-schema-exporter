resource "azurerm_policy_virtual_machine_configuration_assignment" "name" {
  location = string (Required)
  name = string (Required)
  virtual_machine_id = string (Required)
  id = string (Optional, Computed)

  configuration block "list" (Required) {
    assignment_type = string (Optional)
    content_hash = string (Optional, Computed)
    content_uri = string (Optional, Computed)
    version = string (Optional)

    parameter block "set" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
