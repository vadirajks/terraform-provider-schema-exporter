data "azurerm_eventgrid_domain" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  inbound_ip_rule = ['list', ['object', {'action': 'string', 'ip_mask': 'string'}]] (Computed)
  input_mapping_default_values = ['list', ['object', {'data_version': 'string', 'event_type': 'string', 'subject': 'string'}]] (Computed)
  input_mapping_fields = ['list', ['object', {'data_version': 'string', 'event_time': 'string', 'event_type': 'string', 'id': 'string', 'subject': 'string', 'topic': 'string'}]] (Computed)
  input_schema = string (Computed)
  location = string (Computed)
  primary_access_key = string (Computed)
  public_network_access_enabled = bool (Computed)
  secondary_access_key = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
