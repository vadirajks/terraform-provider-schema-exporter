resource "aws_appsync_api" "name" {
  name = string (Required)
  api_arn = string (Computed)
  api_id = string (Computed)
  dns = ['map', 'string'] (Computed)
  owner_contact = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  waf_web_acl_arn = string (Computed)
  xray_enabled = bool (Computed)

  event_config block "list" (Optional) {

    auth_provider block "list" (Optional) {
      auth_type = string (Required)

      cognito_config block "list" (Optional) {
        aws_region = string (Required)
        user_pool_id = string (Required)
        app_id_client_regex = string (Optional)
      }

      lambda_authorizer_config block "list" (Optional) {
        authorizer_uri = string (Required)
        authorizer_result_ttl_in_seconds = number (Optional, Computed)
        identity_validation_expression = string (Optional)
      }

      openid_connect_config block "list" (Optional) {
        issuer = string (Required)
        auth_ttl = number (Optional, Computed)
        client_id = string (Optional)
        iat_ttl = number (Optional, Computed)
      }
    }

    connection_auth_mode block "list" (Optional) {
      auth_type = string (Required)
    }

    default_publish_auth_mode block "list" (Optional) {
      auth_type = string (Required)
    }

    default_subscribe_auth_mode block "list" (Optional) {
      auth_type = string (Required)
    }

    log_config block "list" (Optional) {
      cloudwatch_logs_role_arn = string (Required)
      log_level = string (Required)
    }
  }
}
