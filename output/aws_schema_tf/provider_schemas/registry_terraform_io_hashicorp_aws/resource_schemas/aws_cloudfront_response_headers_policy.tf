resource "aws_cloudfront_response_headers_policy" "name" {
  name = string (Required)
  arn = string (Computed)
  comment = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)

  cors_config block "list" (Optional) {
    access_control_allow_credentials = bool (Required)
    origin_override = bool (Required)
    access_control_max_age_sec = number (Optional)

    access_control_allow_headers block "list" (Required) {
      items = ['set', 'string'] (Optional)
    }

    access_control_allow_methods block "list" (Required) {
      items = ['set', 'string'] (Optional)
    }

    access_control_allow_origins block "list" (Required) {
      items = ['set', 'string'] (Optional)
    }

    access_control_expose_headers block "list" (Optional) {
      items = ['set', 'string'] (Optional)
    }
  }

  custom_headers_config block "list" (Optional) {

    items block "set" (Optional) {
      header = string (Required)
      override = bool (Required)
      value = string (Required)
    }
  }

  remove_headers_config block "list" (Optional) {

    items block "set" (Optional) {
      header = string (Required)
    }
  }

  security_headers_config block "list" (Optional) {

    content_security_policy block "list" (Optional) {
      content_security_policy = string (Required)
      override = bool (Required)
    }

    content_type_options block "list" (Optional) {
      override = bool (Required)
    }

    frame_options block "list" (Optional) {
      frame_option = string (Required)
      override = bool (Required)
    }

    referrer_policy block "list" (Optional) {
      override = bool (Required)
      referrer_policy = string (Required)
    }

    strict_transport_security block "list" (Optional) {
      access_control_max_age_sec = number (Required)
      override = bool (Required)
      include_subdomains = bool (Optional)
      preload = bool (Optional)
    }

    xss_protection block "list" (Optional) {
      override = bool (Required)
      protection = bool (Required)
      mode_block = bool (Optional)
      report_uri = string (Optional)
    }
  }

  server_timing_headers_config block "list" (Optional) {
    enabled = bool (Required)
    sampling_rate = number (Required)
  }
}
