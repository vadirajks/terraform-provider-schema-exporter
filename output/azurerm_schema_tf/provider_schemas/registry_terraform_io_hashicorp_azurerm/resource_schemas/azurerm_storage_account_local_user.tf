resource "azurerm_storage_account_local_user" "name" {
  name = string (Required)
  storage_account_id = string (Required)
  home_directory = string (Optional)
  id = string (Optional, Computed)
  password = string (Computed)
  sid = string (Computed)
  ssh_key_enabled = bool (Optional)
  ssh_password_enabled = bool (Optional)

  permission_scope block "list" (Optional) {
    resource_name = string (Required)
    service = string (Required)

    permissions block "list" (Required) {
      create = bool (Optional)
      delete = bool (Optional)
      list = bool (Optional)
      read = bool (Optional)
      write = bool (Optional)
    }
  }

  ssh_authorized_key block "list" (Optional) {
    key = string (Required)
    description = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
