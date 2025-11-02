resource "azurerm_vpn_gateway" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  virtual_hub_id = string (Required)
  bgp_route_translation_for_nat_enabled = bool (Optional)
  id = string (Optional, Computed)
  ip_configuration = ['list', ['object', {'id': 'string', 'private_ip_address': 'string', 'public_ip_address': 'string'}]] (Computed)
  routing_preference = string (Optional)
  scale_unit = number (Optional)
  tags = ['map', 'string'] (Optional)

  bgp_settings block "list" (Optional) {
    asn = number (Required)
    peer_weight = number (Required)
    bgp_peering_address = string (Computed)

    instance_0_bgp_peering_address block "list" (Optional) {
      custom_ips = ['set', 'string'] (Required)
      default_ips = ['set', 'string'] (Computed)
      ip_configuration_id = string (Computed)
      tunnel_ips = ['set', 'string'] (Computed)
    }

    instance_1_bgp_peering_address block "list" (Optional) {
      custom_ips = ['set', 'string'] (Required)
      default_ips = ['set', 'string'] (Computed)
      ip_configuration_id = string (Computed)
      tunnel_ips = ['set', 'string'] (Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
