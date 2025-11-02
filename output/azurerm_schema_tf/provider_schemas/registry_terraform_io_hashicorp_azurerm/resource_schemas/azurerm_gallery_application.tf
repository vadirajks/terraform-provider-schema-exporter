resource "azurerm_gallery_application" "name" {
  gallery_id = string (Required)
  location = string (Required)
  name = string (Required)
  supported_os_type = string (Required)
  description = string (Optional)
  end_of_life_date = string (Optional)
  eula = string (Optional)
  id = string (Optional, Computed)
  privacy_statement_uri = string (Optional)
  release_note_uri = string (Optional)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
