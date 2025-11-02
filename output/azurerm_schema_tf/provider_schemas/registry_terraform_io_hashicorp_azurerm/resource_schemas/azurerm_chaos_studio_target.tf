resource "azurerm_chaos_studio_target" "name" {
  location = string (Required)
  target_resource_id = string (Required)
  target_type = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
