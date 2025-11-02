data "azurerm_key_vault_key" "name" {
  key_vault_id = string (Required)
  name = string (Required)
  curve = string (Computed)
  e = string (Computed)
  id = string (Optional, Computed)
  key_opts = ['list', 'string'] (Computed)
  key_size = number (Computed)
  key_type = string (Computed)
  n = string (Computed)
  public_key_openssh = string (Computed)
  public_key_pem = string (Computed)
  resource_id = string (Computed)
  resource_versionless_id = string (Computed)
  tags = ['map', 'string'] (Computed)
  version = string (Computed)
  versionless_id = string (Computed)
  x = string (Computed)
  y = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
