resource "google_monitoring_uptime_check_config" "name" {
  display_name = string (Required)
  timeout = string (Required)
  checker_type = string (Optional, Computed)
  id = string (Optional, Computed)
  log_check_failures = bool (Optional)
  name = string (Computed)
  period = string (Optional)
  project = string (Optional, Computed)
  selected_regions = ['list', 'string'] (Optional)
  uptime_check_id = string (Computed)
  user_labels = ['map', 'string'] (Optional)

  content_matchers block "list" (Optional) {
    content = string (Required)
    matcher = string (Optional)

    json_path_matcher block "list" (Optional) {
      json_path = string (Required)
      json_matcher = string (Optional)
    }
  }

  http_check block "list" (Optional) {
    body = string (Optional)
    content_type = string (Optional)
    custom_content_type = string (Optional)
    headers = ['map', 'string'] (Optional, Computed)
    mask_headers = bool (Optional)
    path = string (Optional)
    port = number (Optional, Computed)
    request_method = string (Optional)
    use_ssl = bool (Optional)
    validate_ssl = bool (Optional)

    accepted_response_status_codes block "list" (Optional) {
      status_class = string (Optional)
      status_value = number (Optional)
    }

    auth_info block "list" (Optional) {
      username = string (Required)
      password = string (Optional)
      password_wo = string (Optional)
      password_wo_version = string (Optional)
    }

    ping_config block "list" (Optional) {
      pings_count = number (Required)
    }

    service_agent_authentication block "list" (Optional) {
      type = string (Optional)
    }
  }

  monitored_resource block "list" (Optional) {
    labels = ['map', 'string'] (Required)
    type = string (Required)
  }

  resource_group block "list" (Optional) {
    group_id = string (Optional)
    resource_type = string (Optional)
  }

  synthetic_monitor block "list" (Optional) {

    cloud_function_v2 block "list" (Required) {
      name = string (Required)
    }
  }

  tcp_check block "list" (Optional) {
    port = number (Required)

    ping_config block "list" (Optional) {
      pings_count = number (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
