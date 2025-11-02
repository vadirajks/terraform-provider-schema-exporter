resource "google_compute_region_backend_service" "name" {
  name = string (Required)
  affinity_cookie_ttl_sec = number (Optional)
  connection_draining_timeout_sec = number (Optional)
  creation_timestamp = string (Computed)
  description = string (Optional)
  enable_cdn = bool (Optional)
  fingerprint = string (Computed)
  generated_id = number (Computed)
  health_checks = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  ip_address_selection_policy = string (Optional)
  load_balancing_scheme = string (Optional)
  locality_lb_policy = string (Optional)
  network = string (Optional)
  port_name = string (Optional, Computed)
  project = string (Optional, Computed)
  protocol = string (Optional, Computed)
  region = string (Optional, Computed)
  security_policy = string (Optional)
  self_link = string (Computed)
  session_affinity = string (Optional, Computed)
  timeout_sec = number (Optional, Computed)

  backend block "set" (Optional) {
    group = string (Required)
    balancing_mode = string (Optional)
    capacity_scaler = number (Optional)
    description = string (Optional)
    failover = bool (Optional, Computed)
    max_connections = number (Optional)
    max_connections_per_endpoint = number (Optional)
    max_connections_per_instance = number (Optional)
    max_rate = number (Optional)
    max_rate_per_endpoint = number (Optional)
    max_rate_per_instance = number (Optional)
    max_utilization = number (Optional)

    custom_metrics block "list" (Optional) {
      dry_run = bool (Required)
      name = string (Required)
      max_utilization = number (Optional)
    }
  }

  cdn_policy block "list" (Optional) {
    cache_mode = string (Optional, Computed)
    client_ttl = number (Optional, Computed)
    default_ttl = number (Optional, Computed)
    max_ttl = number (Optional, Computed)
    negative_caching = bool (Optional, Computed)
    serve_while_stale = number (Optional, Computed)
    signed_url_cache_max_age_sec = number (Optional)

    cache_key_policy block "list" (Optional) {
      include_host = bool (Optional)
      include_named_cookies = ['list', 'string'] (Optional)
      include_protocol = bool (Optional)
      include_query_string = bool (Optional)
      query_string_blacklist = ['set', 'string'] (Optional)
      query_string_whitelist = ['set', 'string'] (Optional)
    }

    negative_caching_policy block "list" (Optional) {
      code = number (Optional)
    }
  }

  circuit_breakers block "list" (Optional) {
    max_connections = number (Optional)
    max_pending_requests = number (Optional)
    max_requests = number (Optional)
    max_requests_per_connection = number (Optional)
    max_retries = number (Optional)
  }

  consistent_hash block "list" (Optional) {
    http_header_name = string (Optional)
    minimum_ring_size = number (Optional)

    http_cookie block "list" (Optional) {
      name = string (Optional)
      path = string (Optional)

      ttl block "list" (Optional) {
        seconds = number (Required)
        nanos = number (Optional)
      }
    }
  }

  custom_metrics block "list" (Optional) {
    dry_run = bool (Required)
    name = string (Required)
  }

  failover_policy block "list" (Optional) {
    disable_connection_drain_on_failover = bool (Optional, Computed)
    drop_traffic_if_unhealthy = bool (Optional, Computed)
    failover_ratio = number (Optional)
  }

  ha_policy block "list" (Optional) {
    fast_ip_move = string (Optional)

    leader block "list" (Optional) {
      backend_group = string (Optional)

      network_endpoint block "list" (Optional) {
        instance = string (Optional)
      }
    }
  }

  iap block "list" (Optional) {
    enabled = bool (Required)
    oauth2_client_id = string (Optional)
    oauth2_client_secret = string (Optional)
    oauth2_client_secret_sha256 = string (Computed)
  }

  log_config block "list" (Optional) {
    enable = bool (Optional)
    optional_fields = ['list', 'string'] (Optional, Computed)
    optional_mode = string (Optional, Computed)
    sample_rate = number (Optional)
  }

  outlier_detection block "list" (Optional) {
    consecutive_errors = number (Optional)
    consecutive_gateway_failure = number (Optional)
    enforcing_consecutive_errors = number (Optional)
    enforcing_consecutive_gateway_failure = number (Optional)
    enforcing_success_rate = number (Optional)
    max_ejection_percent = number (Optional)
    success_rate_minimum_hosts = number (Optional)
    success_rate_request_volume = number (Optional)
    success_rate_stdev_factor = number (Optional)

    base_ejection_time block "list" (Optional) {
      seconds = number (Required)
      nanos = number (Optional)
    }

    interval block "list" (Optional) {
      seconds = number (Required)
      nanos = number (Optional)
    }
  }

  params block "list" (Optional) {
    resource_manager_tags = ['map', 'string'] (Optional)
  }

  strong_session_affinity_cookie block "list" (Optional) {
    name = string (Optional)
    path = string (Optional)

    ttl block "list" (Optional) {
      seconds = number (Required)
      nanos = number (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
