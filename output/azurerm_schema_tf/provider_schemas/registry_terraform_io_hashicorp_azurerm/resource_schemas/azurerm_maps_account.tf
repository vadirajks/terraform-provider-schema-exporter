resource "azurerm_maps_account" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  id = string (Optional, Computed)
  local_authentication_enabled = bool (Optional)
  primary_access_key = string (Computed)
  secondary_access_key = string (Computed)
  tags = ['map', 'string'] (Optional)
  x_ms_client_id = string (Computed)

  cors block "list" (Optional) {
    allowed_origins = ['list', 'string'] (Required)
  }

  data_store block "list" (Optional) {
    unique_name = string (Required)
    storage_account_id = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
