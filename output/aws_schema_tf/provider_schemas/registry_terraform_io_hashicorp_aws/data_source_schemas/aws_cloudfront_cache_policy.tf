data "aws_cloudfront_cache_policy" "name" {
  arn = string (Computed)
  comment = string (Computed)
  default_ttl = number (Computed)
  etag = string (Computed)
  id = string (Optional)
  max_ttl = number (Computed)
  min_ttl = number (Computed)
  name = string (Optional)
  parameters_in_cache_key_and_forwarded_to_origin = ['list', ['object', {'cookies_config': ['list', ['object', {'cookie_behavior': 'string', 'cookies': ['list', ['object', {'items': ['set', 'string']}]]}]], 'enable_accept_encoding_brotli': 'bool', 'enable_accept_encoding_gzip': 'bool', 'headers_config': ['list', ['object', {'header_behavior': 'string', 'headers': ['list', ['object', {'items': ['set', 'string']}]]}]], 'query_strings_config': ['list', ['object', {'query_string_behavior': 'string', 'query_strings': ['list', ['object', {'items': ['set', 'string']}]]}]]}]] (Computed)
}
