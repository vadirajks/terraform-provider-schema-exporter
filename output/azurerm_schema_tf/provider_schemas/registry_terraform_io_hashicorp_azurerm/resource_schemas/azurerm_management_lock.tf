resource "azurerm_management_lock" "name" {
  lock_level = string (Required)
  name = string (Required)
  scope = string (Required)
  id = string (Optional, Computed)
  notes = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
