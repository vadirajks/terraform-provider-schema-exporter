data "azurerm_container_registry_cache_rule" "name" {
  container_registry_id = string (Required)
  name = string (Required)
  credential_set_id = string (Computed)
  id = string (Optional, Computed)
  source_repo = string (Computed)
  target_repo = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
