resource "google_compute_backend_bucket" "name" {
  bucket_name = string (Required)
  name = string (Required)
  compression_mode = string (Optional)
  creation_timestamp = string (Computed)
  custom_response_headers = ['list', 'string'] (Optional)
  description = string (Optional)
  edge_security_policy = string (Optional)
  enable_cdn = bool (Optional)
  id = string (Optional, Computed)
  load_balancing_scheme = string (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)

  cdn_policy block "list" (Optional) {
    cache_mode = string (Optional, Computed)
    client_ttl = number (Optional, Computed)
    default_ttl = number (Optional, Computed)
    max_ttl = number (Optional, Computed)
    negative_caching = bool (Optional, Computed)
    request_coalescing = bool (Optional)
    serve_while_stale = number (Optional, Computed)
    signed_url_cache_max_age_sec = number (Optional)

    bypass_cache_on_request_headers block "list" (Optional) {
      header_name = string (Optional)
    }

    cache_key_policy block "list" (Optional) {
      include_http_headers = ['list', 'string'] (Optional)
      query_string_whitelist = ['list', 'string'] (Optional)
    }

    negative_caching_policy block "list" (Optional) {
      code = number (Optional)
      ttl = number (Optional)
    }
  }

  params block "list" (Optional) {
    resource_manager_tags = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
