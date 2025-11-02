resource "aws_lightsail_distribution" "name" {
  bundle_id = string (Required)
  name = string (Required)
  alternative_domain_names = ['list', 'string'] (Computed)
  arn = string (Computed)
  certificate_name = string (Optional)
  created_at = string (Computed)
  domain_name = string (Computed)
  id = string (Optional, Computed)
  ip_address_type = string (Optional)
  is_enabled = bool (Optional)
  location = ['list', ['object', {'availability_zone': 'string', 'region_name': 'string'}]] (Computed)
  origin_public_dns = string (Computed)
  region = string (Optional, Computed)
  resource_type = string (Computed)
  status = string (Computed)
  support_code = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  cache_behavior block "set" (Optional) {
    behavior = string (Required)
    path = string (Required)
  }

  cache_behavior_settings block "list" (Optional) {
    allowed_http_methods = string (Optional)
    cached_http_methods = string (Optional)
    default_ttl = number (Optional)
    maximum_ttl = number (Optional)
    minimum_ttl = number (Optional)

    forwarded_cookies block "list" (Optional) {
      cookies_allow_list = ['set', 'string'] (Optional)
      option = string (Optional)
    }

    forwarded_headers block "list" (Optional) {
      headers_allow_list = ['set', 'string'] (Optional)
      option = string (Optional)
    }

    forwarded_query_strings block "list" (Optional) {
      option = bool (Optional)
      query_strings_allowed_list = ['set', 'string'] (Optional)
    }
  }

  default_cache_behavior block "list" (Required) {
    behavior = string (Required)
  }

  origin block "list" (Required) {
    name = string (Required)
    region_name = string (Required)
    protocol_policy = string (Optional)
    resource_type = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
