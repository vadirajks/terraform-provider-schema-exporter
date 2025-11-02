resource "google_compute_router_nat" "name" {
  name = string (Required)
  router = string (Required)
  source_subnetwork_ip_ranges_to_nat = string (Required)
  auto_network_tier = string (Optional, Computed)
  drain_nat_ips = ['set', 'string'] (Optional, Computed)
  enable_dynamic_port_allocation = bool (Optional, Computed)
  enable_endpoint_independent_mapping = bool (Optional, Computed)
  endpoint_types = ['list', 'string'] (Optional, Computed)
  icmp_idle_timeout_sec = number (Optional)
  id = string (Optional, Computed)
  initial_nat_ips = ['set', 'string'] (Optional)
  max_ports_per_vm = number (Optional)
  min_ports_per_vm = number (Optional, Computed)
  nat_ip_allocate_option = string (Optional)
  nat_ips = ['set', 'string'] (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  source_subnetwork_ip_ranges_to_nat64 = string (Optional)
  tcp_established_idle_timeout_sec = number (Optional)
  tcp_time_wait_timeout_sec = number (Optional)
  tcp_transitory_idle_timeout_sec = number (Optional)
  type = string (Optional)
  udp_idle_timeout_sec = number (Optional)

  log_config block "list" (Optional) {
    enable = bool (Required)
    filter = string (Required)
  }

  nat64_subnetwork block "set" (Optional) {
    name = string (Required)
  }

  rules block "set" (Optional) {
    match = string (Required)
    rule_number = number (Required)
    description = string (Optional)

    action block "list" (Optional) {
      source_nat_active_ips = ['set', 'string'] (Optional)
      source_nat_active_ranges = ['set', 'string'] (Optional)
      source_nat_drain_ips = ['set', 'string'] (Optional)
      source_nat_drain_ranges = ['set', 'string'] (Optional)
    }
  }

  subnetwork block "set" (Optional) {
    name = string (Required)
    source_ip_ranges_to_nat = ['set', 'string'] (Required)
    secondary_ip_range_names = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
