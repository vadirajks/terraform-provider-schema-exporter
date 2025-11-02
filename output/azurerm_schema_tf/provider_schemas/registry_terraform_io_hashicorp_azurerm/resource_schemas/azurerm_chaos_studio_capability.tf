resource "azurerm_chaos_studio_capability" "name" {
  capability_type = string (Required)
  chaos_studio_target_id = string (Required)
  id = string (Optional, Computed)
  urn = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
