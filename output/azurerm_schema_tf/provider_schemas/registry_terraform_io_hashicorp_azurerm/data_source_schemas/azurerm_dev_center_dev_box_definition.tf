data "azurerm_dev_center_dev_box_definition" "name" {
  dev_center_id = string (Required)
  name = string (Required)
  hibernate_support_enabled = bool (Computed)
  id = string (Optional, Computed)
  image_reference_id = string (Computed)
  location = string (Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
