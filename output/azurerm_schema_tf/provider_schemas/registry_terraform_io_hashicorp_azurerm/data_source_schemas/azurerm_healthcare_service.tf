data "azurerm_healthcare_service" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  access_policy_object_ids = ['set', 'string'] (Computed)
  authentication_configuration = ['list', ['object', {'audience': 'string', 'authority': 'string', 'smart_proxy_enabled': 'bool'}]] (Computed)
  cors_configuration = ['list', ['object', {'allow_credentials': 'bool', 'allowed_headers': ['set', 'string'], 'allowed_methods': ['list', 'string'], 'allowed_origins': ['set', 'string'], 'max_age_in_seconds': 'number'}]] (Computed)
  cosmosdb_key_vault_key_versionless_id = string (Computed)
  cosmosdb_throughput = number (Computed)
  id = string (Optional, Computed)
  kind = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
