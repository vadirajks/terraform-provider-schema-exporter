resource "azurerm_virtual_machine_gallery_application_assignment" "name" {
  gallery_application_version_id = string (Required)
  virtual_machine_id = string (Required)
  configuration_blob_uri = string (Optional)
  id = string (Optional, Computed)
  order = number (Optional)
  tag = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
