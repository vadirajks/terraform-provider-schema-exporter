resource "azurerm_storage_container" "name" {
  name = string (Required)
  container_access_type = string (Optional)
  default_encryption_scope = string (Optional, Computed)
  encryption_scope_override_enabled = bool (Optional)
  has_immutability_policy = bool (Computed)
  has_legal_hold = bool (Computed)
  id = string (Optional, Computed)
  metadata = ['map', 'string'] (Optional, Computed)
  resource_manager_id = string (Computed)
  storage_account_id = string (Optional)
  storage_account_name = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
