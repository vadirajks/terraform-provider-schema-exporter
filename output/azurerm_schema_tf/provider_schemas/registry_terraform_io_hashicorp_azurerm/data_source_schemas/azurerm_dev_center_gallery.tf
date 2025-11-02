data "azurerm_dev_center_gallery" "name" {
  dev_center_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  shared_gallery_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
