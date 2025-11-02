data "azurerm_blueprint_published_version" "name" {
  blueprint_name = string (Required)
  scope_id = string (Required)
  version = string (Required)
  description = string (Computed)
  display_name = string (Computed)
  id = string (Optional, Computed)
  last_modified = string (Computed)
  target_scope = string (Computed)
  time_created = string (Computed)
  type = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
