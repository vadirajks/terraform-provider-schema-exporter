resource "azurerm_eventgrid_partner_namespace" "name" {
  location = string (Required)
  name = string (Required)
  partner_registration_id = string (Required)
  resource_group_name = string (Required)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  local_authentication_enabled = bool (Optional)
  partner_topic_routing_mode = string (Optional)
  public_network_access = string (Optional)
  tags = ['map', 'string'] (Optional)

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
}
