resource "azurerm_fluid_relay_server" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  frs_tenant_id = string (Computed)
  id = string (Optional, Computed)
  orderer_endpoints = ['list', 'string'] (Computed)
  primary_key = string (Computed)
  secondary_key = string (Computed)
  service_endpoints = ['list', 'string'] (Computed)
  storage_endpoints = ['list', 'string'] (Computed)
  storage_sku = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  customer_managed_key block "list" (Optional) {
    key_vault_key_id = string (Required)
    user_assigned_identity_id = string (Required)
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
