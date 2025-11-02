resource "google_compute_region_security_policy" "name" {
  name = string (Required)
  description = string (Optional)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  policy_id = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)
  self_link_with_policy_id = string (Computed)
  type = string (Optional)

  advanced_options_config block "list" (Optional) {
    json_parsing = string (Optional)
    log_level = string (Optional)
    user_ip_request_headers = ['set', 'string'] (Optional)

    json_custom_config block "list" (Optional) {
      content_types = ['set', 'string'] (Required)
    }
  }

  ddos_protection_config block "list" (Optional) {
    ddos_protection = string (Required)
  }

  rules block "list" (Optional) {
    action = string (Required)
    priority = number (Required)
    description = string (Optional)
    preview = bool (Optional)

    match block "list" (Optional) {
      versioned_expr = string (Optional)

      config block "list" (Optional) {
        src_ip_ranges = ['list', 'string'] (Optional)
      }

      expr block "list" (Optional) {
        expression = string (Required)
      }
    }

    network_match block "list" (Optional) {
      dest_ip_ranges = ['list', 'string'] (Optional)
      dest_ports = ['list', 'string'] (Optional)
      ip_protocols = ['list', 'string'] (Optional)
      src_asns = ['list', 'number'] (Optional)
      src_ip_ranges = ['list', 'string'] (Optional)
      src_ports = ['list', 'string'] (Optional)
      src_region_codes = ['list', 'string'] (Optional)

      user_defined_fields block "list" (Optional) {
        name = string (Optional)
        values = ['list', 'string'] (Optional)
      }
    }

    preconfigured_waf_config block "list" (Optional) {

      exclusion block "list" (Optional) {
        target_rule_set = string (Required)
        target_rule_ids = ['list', 'string'] (Optional)

        request_cookie block "list" (Optional) {
          operator = string (Required)
          value = string (Optional)
        }

        request_header block "list" (Optional) {
          operator = string (Required)
          value = string (Optional)
        }

        request_query_param block "list" (Optional) {
          operator = string (Required)
          value = string (Optional)
        }

        request_uri block "list" (Optional) {
          operator = string (Required)
          value = string (Optional)
        }
      }
    }

    rate_limit_options block "list" (Optional) {
      ban_duration_sec = number (Optional)
      conform_action = string (Optional)
      enforce_on_key = string (Optional)
      enforce_on_key_name = string (Optional)
      exceed_action = string (Optional)

      ban_threshold block "list" (Optional) {
        count = number (Optional)
        interval_sec = number (Optional)
      }

      enforce_on_key_configs block "list" (Optional) {
        enforce_on_key_name = string (Optional)
        enforce_on_key_type = string (Optional)
      }

      rate_limit_threshold block "list" (Optional) {
        count = number (Optional)
        interval_sec = number (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  user_defined_fields block "list" (Optional) {
    base = string (Required)
    mask = string (Optional)
    name = string (Optional)
    offset = number (Optional)
    size = number (Optional)
  }
}
