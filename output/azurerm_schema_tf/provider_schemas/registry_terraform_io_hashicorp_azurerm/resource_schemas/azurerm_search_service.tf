resource "azurerm_search_service" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  allowed_ips = ['set', 'string'] (Optional)
  authentication_failure_mode = string (Optional)
  customer_managed_key_encryption_compliance_status = string (Computed)
  customer_managed_key_enforcement_enabled = bool (Optional)
  hosting_mode = string (Optional)
  id = string (Optional, Computed)
  local_authentication_enabled = bool (Optional)
  network_rule_bypass_option = string (Optional)
  partition_count = number (Optional)
  primary_key = string (Computed)
  public_network_access_enabled = bool (Optional)
  query_keys = ['list', ['object', {'key': 'string', 'name': 'string'}]] (Computed)
  replica_count = number (Optional)
  secondary_key = string (Computed)
  semantic_search_sku = string (Optional)
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
