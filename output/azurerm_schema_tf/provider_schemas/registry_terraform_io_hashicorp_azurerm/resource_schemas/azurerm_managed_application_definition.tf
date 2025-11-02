resource "azurerm_managed_application_definition" "name" {
  display_name = string (Required)
  location = string (Required)
  lock_level = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  create_ui_definition = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  main_template = string (Optional)
  package_enabled = bool (Optional)
  package_file_uri = string (Optional)
  tags = ['map', 'string'] (Optional)

  authorization block "set" (Optional) {
    role_definition_id = string (Required)
    service_principal_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
