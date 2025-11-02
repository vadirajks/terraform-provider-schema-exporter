resource "google_compute_firewall_policy_rule" "name" {
  action = string (Required)
  direction = string (Required)
  firewall_policy = string (Required)
  priority = number (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  disabled = bool (Optional)
  enable_logging = bool (Optional)
  id = string (Optional, Computed)
  kind = string (Computed)
  rule_tuple_count = number (Computed)
  security_profile_group = string (Optional)
  target_resources = ['list', 'string'] (Optional)
  target_service_accounts = ['list', 'string'] (Optional)
  tls_inspect = bool (Optional)

  match block "list" (Required) {
    dest_address_groups = ['list', 'string'] (Optional)
    dest_fqdns = ['list', 'string'] (Optional)
    dest_ip_ranges = ['list', 'string'] (Optional)
    dest_region_codes = ['list', 'string'] (Optional)
    dest_threat_intelligences = ['list', 'string'] (Optional)
    src_address_groups = ['list', 'string'] (Optional)
    src_fqdns = ['list', 'string'] (Optional)
    src_ip_ranges = ['list', 'string'] (Optional)
    src_region_codes = ['list', 'string'] (Optional)
    src_threat_intelligences = ['list', 'string'] (Optional)

    layer4_configs block "list" (Required) {
      ip_protocol = string (Required)
      ports = ['list', 'string'] (Optional)
    }

    src_secure_tags block "list" (Optional) {
      name = string (Optional)
      state = string (Computed)
    }
  }

  target_secure_tags block "list" (Optional) {
    name = string (Optional)
    state = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
