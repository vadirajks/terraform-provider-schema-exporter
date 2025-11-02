data "aws_cloudfront_origin_request_policy" "name" {
  arn = string (Computed)
  comment = string (Computed)
  cookies_config = ['list', ['object', {'cookie_behavior': 'string', 'cookies': ['list', ['object', {'items': ['set', 'string']}]]}]] (Computed)
  etag = string (Computed)
  headers_config = ['list', ['object', {'header_behavior': 'string', 'headers': ['list', ['object', {'items': ['set', 'string']}]]}]] (Computed)
  id = string (Optional)
  name = string (Optional)
  query_strings_config = ['list', ['object', {'query_string_behavior': 'string', 'query_strings': ['list', ['object', {'items': ['set', 'string']}]]}]] (Computed)
}
