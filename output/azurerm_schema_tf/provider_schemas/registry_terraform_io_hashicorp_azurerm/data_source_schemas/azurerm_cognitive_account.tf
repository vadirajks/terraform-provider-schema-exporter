data "azurerm_cognitive_account" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  kind = string (Computed)
  local_auth_enabled = bool (Computed)
  location = string (Computed)
  primary_access_key = string (Computed)
  qna_runtime_endpoint = string (Computed)
  secondary_access_key = string (Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
