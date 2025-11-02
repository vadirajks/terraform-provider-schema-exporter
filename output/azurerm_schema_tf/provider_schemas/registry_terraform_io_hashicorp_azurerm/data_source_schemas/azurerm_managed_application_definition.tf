data "azurerm_managed_application_definition" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  location = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
