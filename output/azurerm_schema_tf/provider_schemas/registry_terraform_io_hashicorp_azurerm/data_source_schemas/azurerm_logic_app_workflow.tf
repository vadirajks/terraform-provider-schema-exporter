data "azurerm_logic_app_workflow" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  access_endpoint = string (Computed)
  connector_endpoint_ip_addresses = ['list', 'string'] (Computed)
  connector_outbound_ip_addresses = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  logic_app_integration_account_id = string (Computed)
  parameters = ['map', 'string'] (Computed)
  tags = ['map', 'string'] (Computed)
  workflow_endpoint_ip_addresses = ['list', 'string'] (Computed)
  workflow_outbound_ip_addresses = ['list', 'string'] (Computed)
  workflow_schema = string (Computed)
  workflow_version = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
