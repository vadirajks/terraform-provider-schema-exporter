data "azurerm_storage_container" "name" {
  name = string (Required)
  container_access_type = string (Computed)
  default_encryption_scope = string (Computed)
  encryption_scope_override_enabled = bool (Computed)
  has_immutability_policy = bool (Computed)
  has_legal_hold = bool (Computed)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional, Computed)
  resource_manager_id = string (Computed)
  storage_account_id = string (Optional)
  storage_account_name = string (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
