resource "azurerm_lighthouse_assignment" "name" {
  lighthouse_definition_id = string (Required)
  scope = string (Required)
  id = string (Optional, Computed)
  name = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
