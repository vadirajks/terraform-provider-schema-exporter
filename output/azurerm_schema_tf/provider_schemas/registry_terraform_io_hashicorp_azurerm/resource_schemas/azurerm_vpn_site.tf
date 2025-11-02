resource "azurerm_vpn_site" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  virtual_wan_id = string (Required)
  address_cidrs = ['set', 'string'] (Optional)
  device_model = string (Optional)
  device_vendor = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  link block "list" (Optional) {
    name = string (Required)
    fqdn = string (Optional)
    id = string (Computed)
    ip_address = string (Optional)
    provider_name = string (Optional)
    speed_in_mbps = number (Optional)

    bgp block "list" (Optional) {
      asn = number (Required)
      peering_address = string (Required)
    }
  }

  o365_policy block "list" (Optional) {

    traffic_category block "list" (Optional) {
      allow_endpoint_enabled = bool (Optional)
      default_endpoint_enabled = bool (Optional)
      optimize_endpoint_enabled = bool (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
