resource "aws_cloudfront_distribution" "name" {
  enabled = bool (Required)
  aliases = ['set', 'string'] (Optional)
  anycast_ip_list_id = string (Optional)
  arn = string (Computed)
  caller_reference = string (Computed)
  comment = string (Optional)
  continuous_deployment_policy_id = string (Optional, Computed)
  default_root_object = string (Optional)
  domain_name = string (Computed)
  etag = string (Computed)
  hosted_zone_id = string (Computed)
  http_version = string (Optional)
  id = string (Optional, Computed)
  in_progress_validation_batches = number (Computed)
  is_ipv6_enabled = bool (Optional)
  last_modified_time = string (Computed)
  price_class = string (Optional)
  retain_on_delete = bool (Optional)
  staging = bool (Optional)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  trusted_key_groups = ['list', ['object', {'enabled': 'bool', 'items': ['list', ['object', {'key_group_id': 'string', 'key_pair_ids': ['set', 'string']}]]}]] (Computed)
  trusted_signers = ['list', ['object', {'enabled': 'bool', 'items': ['list', ['object', {'aws_account_number': 'string', 'key_pair_ids': ['set', 'string']}]]}]] (Computed)
  wait_for_deployment = bool (Optional)
  web_acl_id = string (Optional)

  custom_error_response block "set" (Optional) {
    error_code = number (Required)
    error_caching_min_ttl = number (Optional)
    response_code = number (Optional)
    response_page_path = string (Optional)
  }

  default_cache_behavior block "list" (Required) {
    allowed_methods = ['set', 'string'] (Required)
    cached_methods = ['set', 'string'] (Required)
    target_origin_id = string (Required)
    viewer_protocol_policy = string (Required)
    cache_policy_id = string (Optional)
    compress = bool (Optional)
    default_ttl = number (Optional, Computed)
    field_level_encryption_id = string (Optional)
    max_ttl = number (Optional, Computed)
    min_ttl = number (Optional)
    origin_request_policy_id = string (Optional)
    realtime_log_config_arn = string (Optional)
    response_headers_policy_id = string (Optional)
    smooth_streaming = bool (Optional)
    trusted_key_groups = ['list', 'string'] (Optional, Computed)
    trusted_signers = ['list', 'string'] (Optional, Computed)

    forwarded_values block "list" (Optional) {
      query_string = bool (Required)
      headers = ['set', 'string'] (Optional, Computed)
      query_string_cache_keys = ['list', 'string'] (Optional, Computed)

      cookies block "list" (Required) {
        forward = string (Required)
        whitelisted_names = ['set', 'string'] (Optional, Computed)
      }
    }

    function_association block "set" (Optional) {
      event_type = string (Required)
      function_arn = string (Required)
    }

    grpc_config block "list" (Optional) {
      enabled = bool (Optional, Computed)
    }

    lambda_function_association block "set" (Optional) {
      event_type = string (Required)
      lambda_arn = string (Required)
      include_body = bool (Optional)
    }
  }

  logging_config block "list" (Optional) {
    bucket = string (Required)
    include_cookies = bool (Optional)
    prefix = string (Optional)
  }

  ordered_cache_behavior block "list" (Optional) {
    allowed_methods = ['set', 'string'] (Required)
    cached_methods = ['set', 'string'] (Required)
    path_pattern = string (Required)
    target_origin_id = string (Required)
    viewer_protocol_policy = string (Required)
    cache_policy_id = string (Optional)
    compress = bool (Optional)
    default_ttl = number (Optional, Computed)
    field_level_encryption_id = string (Optional)
    max_ttl = number (Optional, Computed)
    min_ttl = number (Optional)
    origin_request_policy_id = string (Optional)
    realtime_log_config_arn = string (Optional)
    response_headers_policy_id = string (Optional)
    smooth_streaming = bool (Optional)
    trusted_key_groups = ['list', 'string'] (Optional)
    trusted_signers = ['list', 'string'] (Optional)

    forwarded_values block "list" (Optional) {
      query_string = bool (Required)
      headers = ['set', 'string'] (Optional, Computed)
      query_string_cache_keys = ['list', 'string'] (Optional, Computed)

      cookies block "list" (Required) {
        forward = string (Required)
        whitelisted_names = ['set', 'string'] (Optional)
      }
    }

    function_association block "set" (Optional) {
      event_type = string (Required)
      function_arn = string (Required)
    }

    grpc_config block "list" (Optional) {
      enabled = bool (Optional, Computed)
    }

    lambda_function_association block "set" (Optional) {
      event_type = string (Required)
      lambda_arn = string (Required)
      include_body = bool (Optional)
    }
  }

  origin block "set" (Required) {
    domain_name = string (Required)
    origin_id = string (Required)
    connection_attempts = number (Optional)
    connection_timeout = number (Optional)
    origin_access_control_id = string (Optional)
    origin_path = string (Optional)
    response_completion_timeout = number (Optional, Computed)

    custom_header block "set" (Optional) {
      name = string (Required)
      value = string (Required)
    }

    custom_origin_config block "list" (Optional) {
      http_port = number (Required)
      https_port = number (Required)
      origin_protocol_policy = string (Required)
      origin_ssl_protocols = ['set', 'string'] (Required)
      ip_address_type = string (Optional)
      origin_keepalive_timeout = number (Optional)
      origin_read_timeout = number (Optional)
    }

    origin_shield block "list" (Optional) {
      enabled = bool (Required)
      origin_shield_region = string (Optional)
    }

    s3_origin_config block "list" (Optional) {
      origin_access_identity = string (Required)
    }

    vpc_origin_config block "list" (Optional) {
      vpc_origin_id = string (Required)
      origin_keepalive_timeout = number (Optional)
      origin_read_timeout = number (Optional)
    }
  }

  origin_group block "set" (Optional) {
    origin_id = string (Required)

    failover_criteria block "list" (Required) {
      status_codes = ['set', 'number'] (Required)
    }

    member block "list" (Required) {
      origin_id = string (Required)
    }
  }

  restrictions block "list" (Required) {

    geo_restriction block "list" (Required) {
      restriction_type = string (Required)
      locations = ['set', 'string'] (Optional, Computed)
    }
  }

  viewer_certificate block "list" (Required) {
    acm_certificate_arn = string (Optional)
    cloudfront_default_certificate = bool (Optional)
    iam_certificate_id = string (Optional)
    minimum_protocol_version = string (Optional)
    ssl_support_method = string (Optional)
  }
}
