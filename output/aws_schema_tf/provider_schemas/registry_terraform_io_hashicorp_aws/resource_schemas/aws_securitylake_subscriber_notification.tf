resource "aws_securitylake_subscriber_notification" "name" {
  subscriber_id = string (Required)
  endpoint_id = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  subscriber_endpoint = string (Computed)

  configuration block "list" (Optional) {

    https_notification_configuration block "list" (Optional) {
      endpoint = string (Required)
      target_role_arn = string (Required)
      authorization_api_key_name = string (Optional)
      authorization_api_key_value = string (Optional)
      http_method = string (Optional)
    }

    sqs_notification_configuration block "list" (Optional) {
    }
  }
}
