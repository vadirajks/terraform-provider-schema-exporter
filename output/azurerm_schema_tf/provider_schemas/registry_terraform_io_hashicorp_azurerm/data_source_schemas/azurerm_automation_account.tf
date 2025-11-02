data "azurerm_automation_account" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  endpoint = string (Computed)
  hybrid_service_url = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  primary_key = string (Computed)
  private_endpoint_connection = ['list', ['object', {'id': 'string', 'name': 'string'}]] (Computed)
  secondary_key = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
