resource "azurerm_route_server" "name" {
  location = string (Required)
  name = string (Required)
  public_ip_address_id = string (Required)
  resource_group_name = string (Required)
  sku = string (Required)
  subnet_id = string (Required)
  branch_to_branch_traffic_enabled = bool (Optional)
  hub_routing_preference = string (Optional)
  id = string (Optional, Computed)
  routing_state = string (Computed)
  tags = ['map', 'string'] (Optional)
  virtual_router_asn = number (Computed)
  virtual_router_ips = ['set', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
