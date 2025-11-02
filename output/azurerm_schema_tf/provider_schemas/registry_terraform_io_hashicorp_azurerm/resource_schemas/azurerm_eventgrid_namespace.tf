resource "azurerm_eventgrid_namespace" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  capacity = number (Optional)
  id = string (Optional, Computed)
  public_network_access = string (Optional)
  sku = string (Optional)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  inbound_ip_rule block "list" (Optional) {
    ip_mask = string (Required)
    action = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  topic_spaces_configuration block "list" (Optional) {
    alternative_authentication_name_source = ['list', 'string'] (Optional)
    maximum_client_sessions_per_authentication_name = number (Optional)
    maximum_session_expiry_in_hours = number (Optional)
    route_topic_id = string (Optional)

    dynamic_routing_enrichment block "list" (Optional) {
      key = string (Required)
      value = string (Required)
    }

    static_routing_enrichment block "list" (Optional) {
      key = string (Required)
      value = string (Required)
    }
  }
}
