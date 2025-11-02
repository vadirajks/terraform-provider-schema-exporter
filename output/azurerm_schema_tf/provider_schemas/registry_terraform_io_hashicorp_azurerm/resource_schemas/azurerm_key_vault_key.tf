resource "azurerm_key_vault_key" "name" {
  key_opts = ['list', 'string'] (Required)
  key_type = string (Required)
  key_vault_id = string (Required)
  name = string (Required)
  curve = string (Optional, Computed)
  e = string (Computed)
  expiration_date = string (Optional)
  id = string (Optional, Computed)
  key_size = number (Optional)
  n = string (Computed)
  not_before_date = string (Optional)
  public_key_openssh = string (Computed)
  public_key_pem = string (Computed)
  resource_id = string (Computed)
  resource_versionless_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  version = string (Computed)
  versionless_id = string (Computed)
  x = string (Computed)
  y = string (Computed)

  rotation_policy block "list" (Optional) {
    expire_after = string (Optional)
    notify_before_expiry = string (Optional)

    automatic block "list" (Optional) {
      time_after_creation = string (Optional)
      time_before_expiry = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
