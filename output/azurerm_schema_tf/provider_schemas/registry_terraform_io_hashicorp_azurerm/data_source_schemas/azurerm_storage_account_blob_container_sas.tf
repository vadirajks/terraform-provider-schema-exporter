data "azurerm_storage_account_blob_container_sas" "name" {
  connection_string = string (Required)
  container_name = string (Required)
  expiry = string (Required)
  start = string (Required)
  cache_control = string (Optional)
  content_disposition = string (Optional)
  content_encoding = string (Optional)
  content_language = string (Optional)
  content_type = string (Optional)
  https_only = bool (Optional)
  id = string (Optional, Computed)
  ip_address = string (Optional)
  sas = string (Computed)

  permissions block "list" (Required) {
    add = bool (Required)
    create = bool (Required)
    delete = bool (Required)
    list = bool (Required)
    read = bool (Required)
    write = bool (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
