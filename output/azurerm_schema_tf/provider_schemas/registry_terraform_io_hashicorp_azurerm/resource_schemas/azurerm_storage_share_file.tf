resource "azurerm_storage_share_file" "name" {
  name = string (Required)
  storage_share_id = string (Required)
  content_disposition = string (Optional)
  content_encoding = string (Optional)
  content_length = number (Computed)
  content_md5 = string (Optional)
  content_type = string (Optional)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional)
  path = string (Optional)
  source = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
