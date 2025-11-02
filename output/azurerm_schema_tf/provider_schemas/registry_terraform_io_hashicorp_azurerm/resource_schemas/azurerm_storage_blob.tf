resource "azurerm_storage_blob" "name" {
  name = string (Required)
  storage_account_name = string (Required)
  storage_container_name = string (Required)
  type = string (Required)
  access_tier = string (Optional, Computed)
  cache_control = string (Optional)
  content_md5 = string (Optional)
  content_type = string (Optional)
  encryption_scope = string (Optional)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional, Computed)
  parallelism = number (Optional)
  size = number (Optional)
  source = string (Optional)
  source_content = string (Optional)
  source_uri = string (Optional)
  url = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
