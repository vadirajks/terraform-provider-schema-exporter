data "azurerm_stack_hci_storage_path" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  custom_location_id = string (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  path = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
