resource "azurerm_container_app_environment_storage" "name" {
  access_mode = string (Required)
  container_app_environment_id = string (Required)
  name = string (Required)
  share_name = string (Required)
  access_key = string (Optional)
  account_name = string (Optional)
  id = string (Optional, Computed)
  nfs_server_url = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
