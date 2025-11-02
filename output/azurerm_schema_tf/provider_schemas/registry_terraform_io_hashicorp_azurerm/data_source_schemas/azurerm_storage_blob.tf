data "azurerm_storage_blob" "name" {
  name = string (Required)
  storage_account_name = string (Required)
  storage_container_name = string (Required)
  access_tier = string (Computed)
  content_md5 = string (Computed)
  content_type = string (Computed)
  encryption_scope = string (Computed)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional, Computed)
  type = string (Computed)
  url = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
