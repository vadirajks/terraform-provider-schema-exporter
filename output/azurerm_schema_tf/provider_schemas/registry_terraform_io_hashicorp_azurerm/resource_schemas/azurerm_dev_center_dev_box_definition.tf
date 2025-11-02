resource "azurerm_dev_center_dev_box_definition" "name" {
  dev_center_id = string (Required)
  image_reference_id = string (Required)
  location = string (Required)
  name = string (Required)
  sku_name = string (Required)
  hibernate_support_enabled = bool (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
