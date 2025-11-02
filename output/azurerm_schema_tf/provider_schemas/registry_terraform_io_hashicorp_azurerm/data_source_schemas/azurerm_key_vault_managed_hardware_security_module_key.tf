data "azurerm_key_vault_managed_hardware_security_module_key" "name" {
  managed_hsm_id = string (Required)
  name = string (Required)
  curve = string (Computed)
  expiration_date = string (Computed)
  id = string (Optional, Computed)
  key_opts = ['list', 'string'] (Computed)
  key_size = number (Computed)
  key_type = string (Computed)
  not_before_date = string (Computed)
  tags = ['map', 'string'] (Computed)
  version = string (Computed)
  versioned_id = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
