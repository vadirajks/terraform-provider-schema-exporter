resource "google_compute_security_policy" "name" {
  name = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  label_fingerprint = string (Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  type = string (Optional, Computed)

  adaptive_protection_config block "list" (Optional) {

    layer_7_ddos_defense_config block "list" (Optional) {
      enable = bool (Optional)
      rule_visibility = string (Optional, Computed)

      threshold_configs block "list" (Optional) {
        name = string (Required)
        auto_deploy_confidence_threshold = number (Optional)
        auto_deploy_expiration_sec = number (Optional)
        auto_deploy_impacted_baseline_threshold = number (Optional)
        auto_deploy_load_threshold = number (Optional)
        detection_absolute_qps = number (Optional)
        detection_load_threshold = number (Optional)
        detection_relative_to_baseline_qps = number (Optional)

        traffic_granularity_configs block "list" (Optional) {
          type = string (Required)
          enable_each_unique_value = bool (Optional)
          value = string (Optional)
        }
      }
    }
  }

  advanced_options_config block "list" (Optional) {
    json_parsing = string (Optional, Computed)
    log_level = string (Optional, Computed)
    user_ip_request_headers = ['set', 'string'] (Optional)

    json_custom_config block "list" (Optional) {
      content_types = ['set', 'string'] (Required)
    }
  }

  recaptcha_options_config block "list" (Optional) {
    redirect_site_key = string (Required)
  }

  rule block "set" (Optional) {
    action = string (Required)
    priority = number (Required)
    description = string (Optional)
    preview = bool (Optional, Computed)

    header_action block "list" (Optional) {

      request_headers_to_adds block "list" (Required) {
        header_name = string (Required)
        header_value = string (Optional)
      }
    }

    match block "list" (Required) {
      versioned_expr = string (Optional)

      config block "list" (Optional) {
        src_ip_ranges = ['set', 'string'] (Required)
      }

      expr block "list" (Optional) {
        expression = string (Required)
      }

      expr_options block "list" (Optional) {

        recaptcha_options block "list" (Required) {
          action_token_site_keys = ['list', 'string'] (Optional)
          session_token_site_keys = ['list', 'string'] (Optional)
        }
      }
    }

    preconfigured_waf_config block "list" (Optional) {

      exclusion block "list" (Optional) {
        target_rule_set = string (Required)
        target_rule_ids = ['set', 'string'] (Optional)

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
      conform_action = string (Required)
      exceed_action = string (Required)
      ban_duration_sec = number (Optional)
      enforce_on_key = string (Optional)
      enforce_on_key_name = string (Optional)

      ban_threshold block "list" (Optional) {
        count = number (Required)
        interval_sec = number (Required)
      }

      enforce_on_key_configs block "list" (Optional) {
        enforce_on_key_name = string (Optional)
        enforce_on_key_type = string (Optional)
      }

      exceed_redirect_options block "list" (Optional) {
        type = string (Required)
        target = string (Optional)
      }

      rate_limit_threshold block "list" (Required) {
        count = number (Required)
        interval_sec = number (Required)
      }
    }

    redirect_options block "list" (Optional) {
      type = string (Required)
      target = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
