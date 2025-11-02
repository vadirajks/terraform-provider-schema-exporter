resource "google_network_services_edge_cache_origin" "name" {
  name = string (Required)
  origin_address = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  failover_origin = string (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  max_attempts = number (Optional)
  port = number (Optional, Computed)
  project = string (Optional, Computed)
  protocol = string (Optional, Computed)
  retry_conditions = ['list', 'string'] (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  aws_v4_authentication block "list" (Optional) {
    access_key_id = string (Required)
    origin_region = string (Required)
    secret_access_key_version = string (Required)
  }

  flex_shielding block "list" (Optional) {
    flex_shielding_regions = ['list', 'string'] (Optional)
  }

  origin_override_action block "list" (Optional) {

    header_action block "list" (Optional) {

      request_headers_to_add block "list" (Optional) {
        header_name = string (Required)
        header_value = string (Required)
        replace = bool (Optional)
      }
    }

    url_rewrite block "list" (Optional) {
      host_rewrite = string (Optional)
    }
  }

  origin_redirect block "list" (Optional) {
    redirect_conditions = ['list', 'string'] (Optional)
  }

  timeout block "list" (Optional) {
    connect_timeout = string (Optional)
    max_attempts_timeout = string (Optional)
    read_timeout = string (Optional)
    response_timeout = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
