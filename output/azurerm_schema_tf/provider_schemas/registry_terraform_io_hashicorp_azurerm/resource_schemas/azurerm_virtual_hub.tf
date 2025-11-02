resource "azurerm_virtual_hub" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  address_prefix = string (Optional)
  branch_to_branch_traffic_enabled = bool (Optional)
  default_route_table_id = string (Computed)
  hub_routing_preference = string (Optional)
  id = string (Optional, Computed)
  sku = string (Optional)
  tags = ['map', 'string'] (Optional)
  virtual_router_asn = number (Computed)
  virtual_router_auto_scale_min_capacity = number (Optional)
  virtual_router_ips = ['list', 'string'] (Computed)
  virtual_wan_id = string (Optional)

  route block "set" (Optional) {
    address_prefixes = ['list', 'string'] (Required)
    next_hop_ip_address = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
