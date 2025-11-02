resource "google_app_engine_standard_app_version" "name" {
  runtime = string (Required)
  service = string (Required)
  app_engine_apis = bool (Optional)
  delete_service_on_destroy = bool (Optional)
  env_variables = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  inbound_services = ['set', 'string'] (Optional)
  instance_class = string (Optional, Computed)
  name = string (Computed)
  noop_on_destroy = bool (Optional)
  project = string (Optional, Computed)
  runtime_api_version = string (Optional)
  service_account = string (Optional, Computed)
  threadsafe = bool (Optional)
  version_id = string (Optional)

  automatic_scaling block "list" (Optional) {
    max_concurrent_requests = number (Optional)
    max_idle_instances = number (Optional)
    max_pending_latency = string (Optional)
    min_idle_instances = number (Optional)
    min_pending_latency = string (Optional)

    standard_scheduler_settings block "list" (Optional) {
      max_instances = number (Optional, Computed)
      min_instances = number (Optional)
      target_cpu_utilization = number (Optional)
      target_throughput_utilization = number (Optional)
    }
  }

  basic_scaling block "list" (Optional) {
    max_instances = number (Required)
    idle_timeout = string (Optional)
  }

  deployment block "list" (Required) {

    files block "set" (Optional) {
      name = string (Required)
      source_url = string (Required)
      sha1_sum = string (Optional)
    }

    zip block "list" (Optional) {
      source_url = string (Required)
      files_count = number (Optional)
    }
  }

  entrypoint block "list" (Required) {
    shell = string (Required)
  }

  handlers block "list" (Optional) {
    auth_fail_action = string (Optional)
    login = string (Optional)
    redirect_http_response_code = string (Optional)
    security_level = string (Optional)
    url_regex = string (Optional)

    script block "list" (Optional) {
      script_path = string (Required)
    }

    static_files block "list" (Optional) {
      application_readable = bool (Optional)
      expiration = string (Optional)
      http_headers = ['map', 'string'] (Optional)
      mime_type = string (Optional)
      path = string (Optional)
      require_matching_file = bool (Optional)
      upload_path_regex = string (Optional)
    }
  }

  libraries block "list" (Optional) {
    name = string (Optional)
    version = string (Optional)
  }

  manual_scaling block "list" (Optional) {
    instances = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_access_connector block "list" (Optional) {
    name = string (Required)
    egress_setting = string (Optional)
  }
}
