resource "azurerm_vpn_gateway_connection" "name" {
  name = string (Required)
  remote_vpn_site_id = string (Required)
  vpn_gateway_id = string (Required)
  id = string (Optional, Computed)
  internet_security_enabled = bool (Optional)

  routing block "list" (Optional) {
    associated_route_table = string (Required)
    inbound_route_map_id = string (Optional)
    outbound_route_map_id = string (Optional)

    propagated_route_table block "list" (Optional) {
      route_table_ids = ['list', 'string'] (Required)
      labels = ['set', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  traffic_selector_policy block "set" (Optional) {
    local_address_ranges = ['set', 'string'] (Required)
    remote_address_ranges = ['set', 'string'] (Required)
  }

  vpn_link block "list" (Required) {
    name = string (Required)
    vpn_site_link_id = string (Required)
    bandwidth_mbps = number (Optional)
    bgp_enabled = bool (Optional)
    connection_mode = string (Optional)
    dpd_timeout_seconds = number (Optional)
    egress_nat_rule_ids = ['set', 'string'] (Optional)
    ingress_nat_rule_ids = ['set', 'string'] (Optional)
    local_azure_ip_address_enabled = bool (Optional)
    policy_based_traffic_selector_enabled = bool (Optional)
    protocol = string (Optional)
    ratelimit_enabled = bool (Optional)
    route_weight = number (Optional)
    shared_key = string (Optional, Computed)

    custom_bgp_address block "set" (Optional) {
      ip_address = string (Required)
      ip_configuration_id = string (Required)
    }

    ipsec_policy block "list" (Optional) {
      dh_group = string (Required)
      encryption_algorithm = string (Required)
      ike_encryption_algorithm = string (Required)
      ike_integrity_algorithm = string (Required)
      integrity_algorithm = string (Required)
      pfs_group = string (Required)
      sa_data_size_kb = number (Required)
      sa_lifetime_sec = number (Required)
    }
  }
}
