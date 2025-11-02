resource "aws_cloudfront_origin_request_policy" "name" {
  name = string (Required)
  arn = string (Computed)
  comment = string (Optional)
  etag = string (Computed)
  id = string (Optional, Computed)

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
