resource "azurerm_managed_redis" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  high_availability_enabled = bool (Optional)
  hostname = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  customer_managed_key block "list" (Optional) {
    key_vault_key_id = string (Required)
    user_assigned_identity_id = string (Required)
  }

  default_database block "list" (Optional) {
    access_keys_authentication_enabled = bool (Optional)
    client_protocol = string (Optional)
    clustering_policy = string (Optional)
    eviction_policy = string (Optional)
    geo_replication_group_name = string (Optional)
    port = number (Computed)
    primary_access_key = string (Computed)
    secondary_access_key = string (Computed)

    module block "list" (Optional) {
      name = string (Required)
      args = string (Optional)
      version = string (Computed)
    }
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
