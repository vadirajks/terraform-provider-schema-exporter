resource "google_compute_region_network_firewall_policy_with_rules" "name" {
  name = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  network_firewall_policy_id = string (Computed)
  policy_type = string (Optional, Computed)
  predefined_rules = ['list', ['object', {'action': 'string', 'description': 'string', 'direction': 'string', 'disabled': 'bool', 'enable_logging': 'bool', 'match': ['list', ['object', {'dest_address_groups': ['list', 'string'], 'dest_fqdns': ['list', 'string'], 'dest_ip_ranges': ['list', 'string'], 'dest_region_codes': ['list', 'string'], 'dest_threat_intelligences': ['list', 'string'], 'layer4_config': ['list', ['object', {'ip_protocol': 'string', 'ports': ['list', 'string']}]], 'src_address_groups': ['list', 'string'], 'src_fqdns': ['list', 'string'], 'src_ip_ranges': ['list', 'string'], 'src_region_codes': ['list', 'string'], 'src_secure_tag': ['list', ['object', {'name': 'string', 'state': 'string'}]], 'src_threat_intelligences': ['list', 'string']}]], 'priority': 'number', 'rule_name': 'string', 'security_profile_group': 'string', 'target_secure_tag': ['list', ['object', {'name': 'string', 'state': 'string'}]], 'target_service_accounts': ['list', 'string'], 'tls_inspect': 'bool'}]] (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  rule_tuple_count = number (Computed)
  self_link = string (Computed)
  self_link_with_id = string (Computed)

  rule block "list" (Required) {
    action = string (Required)
    priority = number (Required)
    description = string (Optional)
    direction = string (Optional)
    disabled = bool (Optional)
    enable_logging = bool (Optional)
    rule_name = string (Optional)
    security_profile_group = string (Optional)
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

      layer4_config block "list" (Required) {
        ip_protocol = string (Required)
        ports = ['list', 'string'] (Optional)
      }

      src_secure_tag block "list" (Optional) {
        name = string (Optional)
        state = string (Computed)
      }
    }

    target_secure_tag block "list" (Optional) {
      name = string (Optional)
      state = string (Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
