resource "google_compute_router_peer" "name" {
  interface = string (Required)
  name = string (Required)
  peer_asn = number (Required)
  router = string (Required)
  advertise_mode = string (Optional)
  advertised_groups = ['list', 'string'] (Optional)
  advertised_route_priority = number (Optional)
  custom_learned_route_priority = number (Optional)
  enable = bool (Optional)
  enable_ipv4 = bool (Optional, Computed)
  enable_ipv6 = bool (Optional)
  export_policies = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  import_policies = ['list', 'string'] (Optional)
  ip_address = string (Optional, Computed)
  ipv4_nexthop_address = string (Optional, Computed)
  ipv6_nexthop_address = string (Optional, Computed)
  is_advertised_route_priority_set = bool (Computed)
  is_custom_learned_priority_set = bool (Computed)
  management_type = string (Computed)
  peer_ip_address = string (Optional, Computed)
  peer_ipv4_nexthop_address = string (Optional, Computed)
  peer_ipv6_nexthop_address = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  router_appliance_instance = string (Optional)
  zero_advertised_route_priority = bool (Optional)
  zero_custom_learned_route_priority = bool (Optional)

  advertised_ip_ranges block "set" (Optional) {
    range = string (Required)
    description = string (Optional)
  }

  bfd block "list" (Optional) {
    session_initialization_mode = string (Required)
    min_receive_interval = number (Optional)
    min_transmit_interval = number (Optional)
    multiplier = number (Optional)
  }

  custom_learned_ip_ranges block "list" (Optional) {
    range = string (Required)
  }

  md5_authentication_key block "list" (Optional) {
    key = string (Required)
    name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
