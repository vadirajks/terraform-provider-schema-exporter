resource "azurerm_ai_services" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  custom_subdomain_name = string (Optional)
  endpoint = string (Computed)
  fqdns = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  local_authentication_enabled = bool (Optional)
  outbound_network_access_restricted = bool (Optional)
  primary_access_key = string (Computed)
  public_network_access = string (Optional)
  secondary_access_key = string (Computed)
  tags = ['map', 'string'] (Optional)

  customer_managed_key block "list" (Optional) {
    identity_client_id = string (Optional)
    key_vault_key_id = string (Optional)
    managed_hsm_key_id = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  network_acls block "list" (Optional) {
    default_action = string (Required)
    bypass = string (Optional)
    ip_rules = ['set', 'string'] (Optional)

    virtual_network_rules block "set" (Optional) {
      subnet_id = string (Required)
      ignore_missing_vnet_service_endpoint = bool (Optional)
    }
  }

  storage block "list" (Optional) {
    storage_account_id = string (Required)
    identity_client_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
