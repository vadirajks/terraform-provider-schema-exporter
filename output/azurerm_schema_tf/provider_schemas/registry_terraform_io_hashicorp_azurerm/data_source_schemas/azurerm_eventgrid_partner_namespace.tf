data "azurerm_eventgrid_partner_namespace" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  inbound_ip_rule = ['list', ['object', {'action': 'string', 'ip_mask': 'string'}]] (Computed)
  local_authentication_enabled = bool (Computed)
  location = string (Computed)
  partner_registration_id = string (Computed)
  partner_topic_routing_mode = string (Computed)
  public_network_access = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
