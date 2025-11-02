resource "google_cloud_tasks_queue" "name" {
  location = string (Required)
  name = string (Required)
  desired_state = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  state = string (Computed)

  app_engine_routing_override block "list" (Optional) {
    host = string (Computed)
    instance = string (Optional)
    service = string (Optional)
    version = string (Optional)
  }

  http_target block "list" (Optional) {
    http_method = string (Optional, Computed)

    header_overrides block "list" (Optional) {

      header block "list" (Required) {
        key = string (Required)
        value = string (Required)
      }
    }

    oauth_token block "list" (Optional) {
      service_account_email = string (Required)
      scope = string (Optional, Computed)
    }

    oidc_token block "list" (Optional) {
      service_account_email = string (Required)
      audience = string (Optional, Computed)
    }

    uri_override block "list" (Optional) {
      host = string (Optional)
      port = string (Optional)
      scheme = string (Optional, Computed)
      uri_override_enforce_mode = string (Optional, Computed)

      path_override block "list" (Optional) {
        path = string (Optional, Computed)
      }

      query_override block "list" (Optional) {
        query_params = string (Optional, Computed)
      }
    }
  }

  rate_limits block "list" (Optional) {
    max_burst_size = number (Computed)
    max_concurrent_dispatches = number (Optional, Computed)
    max_dispatches_per_second = number (Optional, Computed)
  }

  retry_config block "list" (Optional) {
    max_attempts = number (Optional, Computed)
    max_backoff = string (Optional, Computed)
    max_doublings = number (Optional, Computed)
    max_retry_duration = string (Optional, Computed)
    min_backoff = string (Optional, Computed)
  }

  stackdriver_logging_config block "list" (Optional) {
    sampling_ratio = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
