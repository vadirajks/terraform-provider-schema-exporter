resource "azurerm_eventhub_namespace" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  auto_inflate_enabled = bool (Optional)
  capacity = number (Optional)
  dedicated_cluster_id = string (Optional)
  default_primary_connection_string = string (Computed)
  default_primary_connection_string_alias = string (Computed)
  default_primary_key = string (Computed)
  default_secondary_connection_string = string (Computed)
  default_secondary_connection_string_alias = string (Computed)
  default_secondary_key = string (Computed)
  id = string (Optional, Computed)
  local_authentication_enabled = bool (Optional)
  maximum_throughput_units = number (Optional)
  minimum_tls_version = string (Optional)
  network_rulesets = ['list', ['object', {'default_action': 'string', 'ip_rule': ['list', ['object', {'action': 'string', 'ip_mask': 'string'}]], 'public_network_access_enabled': 'bool', 'trusted_service_access_enabled': 'bool', 'virtual_network_rule': ['set', ['object', {'ignore_missing_virtual_network_service_endpoint': 'bool', 'subnet_id': 'string'}]]}]] (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

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
