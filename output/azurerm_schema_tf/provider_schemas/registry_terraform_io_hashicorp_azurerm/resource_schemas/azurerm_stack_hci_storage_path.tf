resource "azurerm_stack_hci_storage_path" "name" {
  custom_location_id = string (Required)
  location = string (Required)
  name = string (Required)
  path = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
