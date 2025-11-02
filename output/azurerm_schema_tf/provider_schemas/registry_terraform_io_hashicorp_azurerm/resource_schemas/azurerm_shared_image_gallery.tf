resource "azurerm_shared_image_gallery" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  unique_name = string (Computed)

  sharing block "list" (Optional) {
    permission = string (Required)

    community_gallery block "list" (Optional) {
      eula = string (Required)
      prefix = string (Required)
      publisher_email = string (Required)
      publisher_uri = string (Required)
      name = string (Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
