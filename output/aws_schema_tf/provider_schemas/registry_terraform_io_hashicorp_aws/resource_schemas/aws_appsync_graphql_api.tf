resource "aws_appsync_graphql_api" "name" {
  authentication_type = string (Required)
  name = string (Required)
  api_type = string (Optional)
  arn = string (Computed)
  id = string (Optional, Computed)
  introspection_config = string (Optional)
  merged_api_execution_role_arn = string (Optional)
  query_depth_limit = number (Optional)
  region = string (Optional, Computed)
  resolver_count_limit = number (Optional)
  schema = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  uris = ['map', 'string'] (Computed)
  visibility = string (Optional)
  xray_enabled = bool (Optional)

  additional_authentication_provider block "list" (Optional) {
    authentication_type = string (Required)

    lambda_authorizer_config block "list" (Optional) {
      authorizer_uri = string (Required)
      authorizer_result_ttl_in_seconds = number (Optional)
      identity_validation_expression = string (Optional)
    }

    openid_connect_config block "list" (Optional) {
      issuer = string (Required)
      auth_ttl = number (Optional)
      client_id = string (Optional)
      iat_ttl = number (Optional)
    }

    user_pool_config block "list" (Optional) {
      user_pool_id = string (Required)
      app_id_client_regex = string (Optional)
      aws_region = string (Optional, Computed)
    }
  }

  enhanced_metrics_config block "list" (Optional) {
    data_source_level_metrics_behavior = string (Required)
    operation_level_metrics_config = string (Required)
    resolver_level_metrics_behavior = string (Required)
  }

  lambda_authorizer_config block "list" (Optional) {
    authorizer_uri = string (Required)
    authorizer_result_ttl_in_seconds = number (Optional)
    identity_validation_expression = string (Optional)
  }

  log_config block "list" (Optional) {
    cloudwatch_logs_role_arn = string (Required)
    field_log_level = string (Required)
    exclude_verbose_content = bool (Optional)
  }

  openid_connect_config block "list" (Optional) {
    issuer = string (Required)
    auth_ttl = number (Optional)
    client_id = string (Optional)
    iat_ttl = number (Optional)
  }

  user_pool_config block "list" (Optional) {
    default_action = string (Required)
    user_pool_id = string (Required)
    app_id_client_regex = string (Optional)
    aws_region = string (Optional, Computed)
  }
}
