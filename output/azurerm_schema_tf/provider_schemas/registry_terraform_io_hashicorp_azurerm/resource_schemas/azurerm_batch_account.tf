resource "azurerm_batch_account" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  account_endpoint = string (Computed)
  allowed_authentication_modes = ['set', 'string'] (Optional, Computed)
  encryption = ['list', ['object', {'key_vault_key_id': 'string'}]] (Optional)
  id = string (Optional, Computed)
  pool_allocation_mode = string (Optional)
  primary_access_key = string (Computed)
  public_network_access_enabled = bool (Optional)
  secondary_access_key = string (Computed)
  storage_account_authentication_mode = string (Optional)
  storage_account_id = string (Optional)
  storage_account_node_identity = string (Optional)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  key_vault_reference block "list" (Optional) {
    id = string (Required)
    url = string (Required)
  }

  network_profile block "list" (Optional) {

    account_access block "list" (Optional) {
      default_action = string (Optional)

      ip_rule block "list" (Optional) {
        ip_range = string (Required)
        action = string (Optional)
      }
    }

    node_management_access block "list" (Optional) {
      default_action = string (Optional)

      ip_rule block "list" (Optional) {
        ip_range = string (Required)
        action = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
