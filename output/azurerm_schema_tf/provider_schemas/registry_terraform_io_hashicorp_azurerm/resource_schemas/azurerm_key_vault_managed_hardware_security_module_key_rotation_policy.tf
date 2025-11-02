resource "azurerm_key_vault_managed_hardware_security_module_key_rotation_policy" "name" {
  expire_after = string (Required)
  managed_hsm_key_id = string (Required)
  id = string (Optional, Computed)
  time_after_creation = string (Optional)
  time_before_expiry = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
