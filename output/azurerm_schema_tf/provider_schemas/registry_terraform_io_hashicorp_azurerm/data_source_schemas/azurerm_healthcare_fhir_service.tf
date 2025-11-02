data "azurerm_healthcare_fhir_service" "name" {
  name = string (Required)
  workspace_id = string (Required)
  access_policy_object_ids = ['list', 'string'] (Computed)
  authentication = ['list', ['object', {'audience': 'string', 'authority': 'string', 'smart_proxy_enabled': 'bool'}]] (Computed)
  configuration_export_storage_account_name = string (Computed)
  container_registry_login_server_url = ['list', 'string'] (Computed)
  cors = ['list', ['object', {'allowed_headers': ['list', 'string'], 'allowed_methods': ['list', 'string'], 'allowed_origins': ['list', 'string'], 'credentials_allowed': 'bool', 'max_age_in_seconds': 'number'}]] (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  kind = string (Computed)
  location = string (Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
