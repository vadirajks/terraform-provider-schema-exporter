data "azurerm_blueprint_definition" "name" {
  name = string (Required)
  scope_id = string (Required)
  description = string (Computed)
  display_name = string (Computed)
  id = string (Optional, Computed)
  last_modified = string (Computed)
  target_scope = string (Computed)
  time_created = string (Computed)
  versions = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
