resource "azurerm_key_vault_managed_hardware_security_module_key" "name" {
  key_opts = ['set', 'string'] (Required)
  key_type = string (Required)
  managed_hsm_id = string (Required)
  name = string (Required)
  curve = string (Optional)
  expiration_date = string (Optional)
  id = string (Optional, Computed)
  key_size = number (Optional)
  not_before_date = string (Optional)
  tags = ['map', 'string'] (Optional)
  versioned_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
