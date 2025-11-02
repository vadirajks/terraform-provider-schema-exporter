data "azurerm_shared_image_gallery" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Computed)
  id = string (Optional, Computed)
  image_names = ['list', 'string'] (Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Computed)
  unique_name = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
