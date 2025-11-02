resource "azurerm_dev_center_gallery" "name" {
  dev_center_id = string (Required)
  name = string (Required)
  shared_gallery_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
