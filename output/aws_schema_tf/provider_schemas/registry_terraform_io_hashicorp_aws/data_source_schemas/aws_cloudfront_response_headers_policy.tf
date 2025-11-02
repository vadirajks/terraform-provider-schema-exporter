data "aws_cloudfront_response_headers_policy" "name" {
  arn = string (Computed)
  comment = string (Computed)
  cors_config = ['list', ['object', {'access_control_allow_credentials': 'bool', 'access_control_allow_headers': ['list', ['object', {'items': ['set', 'string']}]], 'access_control_allow_methods': ['list', ['object', {'items': ['set', 'string']}]], 'access_control_allow_origins': ['list', ['object', {'items': ['set', 'string']}]], 'access_control_expose_headers': ['list', ['object', {'items': ['set', 'string']}]], 'access_control_max_age_sec': 'number', 'origin_override': 'bool'}]] (Computed)
  custom_headers_config = ['list', ['object', {'items': ['set', ['object', {'header': 'string', 'override': 'bool', 'value': 'string'}]]}]] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  remove_headers_config = ['list', ['object', {'items': ['set', ['object', {'header': 'string'}]]}]] (Computed)
  security_headers_config = ['list', ['object', {'content_security_policy': ['list', ['object', {'content_security_policy': 'string', 'override': 'bool'}]], 'content_type_options': ['list', ['object', {'override': 'bool'}]], 'frame_options': ['list', ['object', {'frame_option': 'string', 'override': 'bool'}]], 'referrer_policy': ['list', ['object', {'override': 'bool', 'referrer_policy': 'string'}]], 'strict_transport_security': ['list', ['object', {'access_control_max_age_sec': 'number', 'include_subdomains': 'bool', 'override': 'bool', 'preload': 'bool'}]], 'xss_protection': ['list', ['object', {'mode_block': 'bool', 'override': 'bool', 'protection': 'bool', 'report_uri': 'string'}]]}]] (Computed)
  server_timing_headers_config = ['list', ['object', {'enabled': 'bool', 'sampling_rate': 'number'}]] (Computed)
}
