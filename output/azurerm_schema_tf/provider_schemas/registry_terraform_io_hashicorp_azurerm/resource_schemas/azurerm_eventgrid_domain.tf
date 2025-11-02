resource "azurerm_eventgrid_domain" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  auto_create_topic_with_first_subscription = bool (Optional)
  auto_delete_topic_with_last_subscription = bool (Optional)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  inbound_ip_rule = ['list', ['object', {'action': 'string', 'ip_mask': 'string'}]] (Optional)
  input_schema = string (Optional)
  local_auth_enabled = bool (Optional)
  primary_access_key = string (Computed)
  public_network_access_enabled = bool (Optional)
  secondary_access_key = string (Computed)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  input_mapping_default_values block "list" (Optional) {
    data_version = string (Optional)
    event_type = string (Optional)
    subject = string (Optional)
  }

  input_mapping_fields block "list" (Optional) {
    data_version = string (Optional)
    event_time = string (Optional)
    event_type = string (Optional)
    id = string (Optional)
    subject = string (Optional)
    topic = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
