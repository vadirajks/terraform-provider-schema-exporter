resource "azurerm_virtual_network_gateway_connection" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  type = string (Required)
  virtual_network_gateway_id = string (Required)
  authorization_key = string (Optional)
  connection_mode = string (Optional)
  connection_protocol = string (Optional, Computed)
  dpd_timeout_seconds = number (Optional)
  egress_nat_rule_ids = ['set', 'string'] (Optional)
  enable_bgp = bool (Optional, Computed)
  express_route_circuit_id = string (Optional)
  express_route_gateway_bypass = bool (Optional, Computed)
  id = string (Optional, Computed)
  ingress_nat_rule_ids = ['set', 'string'] (Optional)
  local_azure_ip_address_enabled = bool (Optional)
  local_network_gateway_id = string (Optional)
  peer_virtual_network_gateway_id = string (Optional)
  private_link_fast_path_enabled = bool (Optional)
  routing_weight = number (Optional, Computed)
  shared_key = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  use_policy_based_traffic_selectors = bool (Optional, Computed)

  custom_bgp_addresses block "list" (Optional) {
    primary = string (Required)
    secondary = string (Optional)
  }

  ipsec_policy block "list" (Optional) {
    dh_group = string (Required)
    ike_encryption = string (Required)
    ike_integrity = string (Required)
    ipsec_encryption = string (Required)
    ipsec_integrity = string (Required)
    pfs_group = string (Required)
    sa_datasize = number (Optional, Computed)
    sa_lifetime = number (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  traffic_selector_policy block "list" (Optional) {
    local_address_cidrs = ['list', 'string'] (Required)
    remote_address_cidrs = ['list', 'string'] (Required)
  }
}
