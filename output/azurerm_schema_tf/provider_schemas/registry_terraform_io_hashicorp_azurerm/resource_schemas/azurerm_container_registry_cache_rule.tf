resource "azurerm_container_registry_cache_rule" "name" {
  container_registry_id = string (Required)
  name = string (Required)
  source_repo = string (Required)
  target_repo = string (Required)
  credential_set_id = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
