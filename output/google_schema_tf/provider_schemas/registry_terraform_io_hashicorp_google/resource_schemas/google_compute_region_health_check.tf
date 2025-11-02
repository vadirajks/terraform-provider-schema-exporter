resource "google_compute_region_health_check" "name" {
  name = string (Required)
  check_interval_sec = number (Optional)
  creation_timestamp = string (Computed)
  description = string (Optional)
  health_check_id = number (Computed)
  healthy_threshold = number (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)
  timeout_sec = number (Optional)
  type = string (Computed)
  unhealthy_threshold = number (Optional)

  grpc_health_check block "list" (Optional) {
    grpc_service_name = string (Optional)
    port = number (Optional)
    port_name = string (Optional)
    port_specification = string (Optional)
  }

  http2_health_check block "list" (Optional) {
    host = string (Optional)
    port = number (Optional)
    port_name = string (Optional)
    port_specification = string (Optional)
    proxy_header = string (Optional)
    request_path = string (Optional)
    response = string (Optional)
  }

  http_health_check block "list" (Optional) {
    host = string (Optional)
    port = number (Optional)
    port_name = string (Optional)
    port_specification = string (Optional)
    proxy_header = string (Optional)
    request_path = string (Optional)
    response = string (Optional)
  }

  https_health_check block "list" (Optional) {
    host = string (Optional)
    port = number (Optional)
    port_name = string (Optional)
    port_specification = string (Optional)
    proxy_header = string (Optional)
    request_path = string (Optional)
    response = string (Optional)
  }

  log_config block "list" (Optional) {
    enable = bool (Optional)
  }

  ssl_health_check block "list" (Optional) {
    port = number (Optional)
    port_name = string (Optional)
    port_specification = string (Optional)
    proxy_header = string (Optional)
    request = string (Optional)
    response = string (Optional)
  }

  tcp_health_check block "list" (Optional) {
    port = number (Optional)
    port_name = string (Optional)
    port_specification = string (Optional)
    proxy_header = string (Optional)
    request = string (Optional)
    response = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
