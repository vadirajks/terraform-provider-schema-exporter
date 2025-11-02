resource "google_app_engine_flexible_app_version" "name" {
  runtime = string (Required)
  service = string (Required)
  beta_settings = ['map', 'string'] (Optional)
  default_expiration = string (Optional)
  delete_service_on_destroy = bool (Optional)
  env_variables = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  inbound_services = ['set', 'string'] (Optional)
  instance_class = string (Optional)
  name = string (Computed)
  nobuild_files_regex = string (Optional)
  noop_on_destroy = bool (Optional)
  project = string (Optional, Computed)
  runtime_api_version = string (Optional, Computed)
  runtime_channel = string (Optional)
  runtime_main_executable_path = string (Optional)
  service_account = string (Optional, Computed)
  serving_status = string (Optional)
  version_id = string (Optional)

  api_config block "list" (Optional) {
    script = string (Required)
    auth_fail_action = string (Optional)
    login = string (Optional)
    security_level = string (Optional)
    url = string (Optional)
  }

  automatic_scaling block "list" (Optional) {
    cool_down_period = string (Optional)
    max_concurrent_requests = number (Optional, Computed)
    max_idle_instances = number (Optional)
    max_pending_latency = string (Optional)
    max_total_instances = number (Optional)
    min_idle_instances = number (Optional)
    min_pending_latency = string (Optional)
    min_total_instances = number (Optional)

    cpu_utilization block "list" (Required) {
      target_utilization = number (Required)
      aggregation_window_length = string (Optional)
    }

    disk_utilization block "list" (Optional) {
      target_read_bytes_per_second = number (Optional)
      target_read_ops_per_second = number (Optional)
      target_write_bytes_per_second = number (Optional)
      target_write_ops_per_second = number (Optional)
    }

    network_utilization block "list" (Optional) {
      target_received_bytes_per_second = number (Optional)
      target_received_packets_per_second = number (Optional)
      target_sent_bytes_per_second = number (Optional)
      target_sent_packets_per_second = number (Optional)
    }

    request_utilization block "list" (Optional) {
      target_concurrent_requests = number (Optional)
      target_request_count_per_second = string (Optional)
    }
  }

  deployment block "list" (Optional) {

    cloud_build_options block "list" (Optional) {
      app_yaml_path = string (Required)
      cloud_build_timeout = string (Optional)
    }

    container block "list" (Optional) {
      image = string (Required)
    }

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

  endpoints_api_service block "list" (Optional) {
    name = string (Required)
    config_id = string (Optional)
    disable_trace_sampling = bool (Optional)
    rollout_strategy = string (Optional)
  }

  entrypoint block "list" (Optional) {
    shell = string (Required)
  }

  flexible_runtime_settings block "list" (Optional) {
    operating_system = string (Optional)
    runtime_version = string (Optional)
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

  liveness_check block "list" (Required) {
    path = string (Required)
    check_interval = string (Optional)
    failure_threshold = number (Optional)
    host = string (Optional)
    initial_delay = string (Optional)
    success_threshold = number (Optional)
    timeout = string (Optional)
  }

  manual_scaling block "list" (Optional) {
    instances = number (Required)
  }

  network block "list" (Optional) {
    name = string (Required)
    forwarded_ports = ['list', 'string'] (Optional)
    instance_tag = string (Optional)
    session_affinity = bool (Optional)
    subnetwork = string (Optional)
  }

  readiness_check block "list" (Required) {
    path = string (Required)
    app_start_timeout = string (Optional)
    check_interval = string (Optional)
    failure_threshold = number (Optional)
    host = string (Optional)
    success_threshold = number (Optional)
    timeout = string (Optional)
  }

  resources block "list" (Optional) {
    cpu = number (Optional)
    disk_gb = number (Optional)
    memory_gb = number (Optional)

    volumes block "list" (Optional) {
      name = string (Required)
      size_gb = number (Required)
      volume_type = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_access_connector block "list" (Optional) {
    name = string (Required)
  }
}
