data "azurerm_search_service" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  customer_managed_key_encryption_compliance_status = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  partition_count = number (Computed)
  primary_key = string (Computed)
  public_network_access_enabled = bool (Computed)
  query_keys = ['list', ['object', {'key': 'string', 'name': 'string'}]] (Computed)
  replica_count = number (Computed)
  secondary_key = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
