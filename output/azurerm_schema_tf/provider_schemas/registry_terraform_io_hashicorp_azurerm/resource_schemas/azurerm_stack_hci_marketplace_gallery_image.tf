resource "azurerm_stack_hci_marketplace_gallery_image" "name" {
  custom_location_id = string (Required)
  hyperv_generation = string (Required)
  location = string (Required)
  name = string (Required)
  os_type = string (Required)
  resource_group_name = string (Required)
  version = string (Required)
  id = string (Optional, Computed)
  storage_path_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  identifier block "list" (Required) {
    offer = string (Required)
    publisher = string (Required)
    sku = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
