resource "aws_cloudfront_cache_policy" "name" {
  name = string (Required)
  arn = string (Computed)
  comment = string (Optional)
  default_ttl = number (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)
  max_ttl = number (Optional)
  min_ttl = number (Optional)

  parameters_in_cache_key_and_forwarded_to_origin block "list" (Required) {
    enable_accept_encoding_brotli = bool (Optional)
    enable_accept_encoding_gzip = bool (Optional)

    cookies_config block "list" (Required) {
      cookie_behavior = string (Required)

      cookies block "list" (Optional) {
        items = ['set', 'string'] (Optional)
      }
    }

    headers_config block "list" (Required) {
      header_behavior = string (Optional)

      headers block "list" (Optional) {
        items = ['set', 'string'] (Optional)
      }
    }

    query_strings_config block "list" (Required) {
      query_string_behavior = string (Required)

      query_strings block "list" (Optional) {
        items = ['set', 'string'] (Optional)
      }
    }
  }
}
