resource "google_cloud_scheduler_job" "name" {
  name = string (Required)
  attempt_deadline = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  paused = bool (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  schedule = string (Optional)
  state = string (Computed)
  time_zone = string (Optional)

  app_engine_http_target block "list" (Optional) {
    relative_uri = string (Required)
    body = string (Optional)
    headers = ['map', 'string'] (Optional)
    http_method = string (Optional)

    app_engine_routing block "list" (Optional) {
      instance = string (Optional)
      service = string (Optional)
      version = string (Optional)
    }
  }

  http_target block "list" (Optional) {
    uri = string (Required)
    body = string (Optional)
    headers = ['map', 'string'] (Optional)
    http_method = string (Optional)

    oauth_token block "list" (Optional) {
      service_account_email = string (Required)
      scope = string (Optional)
    }

    oidc_token block "list" (Optional) {
      service_account_email = string (Required)
      audience = string (Optional)
    }
  }

  pubsub_target block "list" (Optional) {
    topic_name = string (Required)
    attributes = ['map', 'string'] (Optional)
    data = string (Optional)
  }

  retry_config block "list" (Optional) {
    max_backoff_duration = string (Optional, Computed)
    max_doublings = number (Optional, Computed)
    max_retry_duration = string (Optional, Computed)
    min_backoff_duration = string (Optional, Computed)
    retry_count = number (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
