resource "azurerm_servicebus_namespace" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  capacity = number (Optional)
  default_primary_connection_string = string (Computed)
  default_primary_key = string (Computed)
  default_secondary_connection_string = string (Computed)
  default_secondary_key = string (Computed)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  local_auth_enabled = bool (Optional)
  minimum_tls_version = string (Optional)
  premium_messaging_partitions = number (Optional)
  public_network_access_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  customer_managed_key block "list" (Optional) {
    identity_id = string (Required)
    key_vault_key_id = string (Required)
    infrastructure_encryption_enabled = bool (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  network_rule_set block "list" (Optional) {
    default_action = string (Optional)
    ip_rules = ['set', 'string'] (Optional)
    public_network_access_enabled = bool (Optional)
    trusted_services_allowed = bool (Optional)

    network_rules block "set" (Optional) {
      subnet_id = string (Required)
      ignore_missing_vnet_service_endpoint = bool (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
