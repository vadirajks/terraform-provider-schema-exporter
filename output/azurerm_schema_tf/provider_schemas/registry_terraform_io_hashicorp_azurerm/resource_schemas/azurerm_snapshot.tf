resource "azurerm_snapshot" "name" {
  create_option = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  disk_access_id = string (Optional)
  disk_size_gb = number (Optional, Computed)
  id = string (Optional, Computed)
  incremental_enabled = bool (Optional)
  network_access_policy = string (Optional)
  public_network_access_enabled = bool (Optional)
  source_resource_id = string (Optional)
  source_uri = string (Optional)
  storage_account_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  trusted_launch_enabled = bool (Computed)

  encryption_settings block "list" (Optional) {

    disk_encryption_key block "list" (Required) {
      secret_url = string (Required)
      source_vault_id = string (Required)
    }

    key_encryption_key block "list" (Optional) {
      key_url = string (Required)
      source_vault_id = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
