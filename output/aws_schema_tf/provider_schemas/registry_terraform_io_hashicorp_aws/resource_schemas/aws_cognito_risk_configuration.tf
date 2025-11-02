resource "aws_cognito_risk_configuration" "name" {
  user_pool_id = string (Required)
  client_id = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  account_takeover_risk_configuration block "list" (Optional) {

    actions block "list" (Required) {

      high_action block "list" (Optional) {
        event_action = string (Required)
        notify = bool (Required)
      }

      low_action block "list" (Optional) {
        event_action = string (Required)
        notify = bool (Required)
      }

      medium_action block "list" (Optional) {
        event_action = string (Required)
        notify = bool (Required)
      }
    }

    notify_configuration block "list" (Optional) {
      source_arn = string (Required)
      from = string (Optional)
      reply_to = string (Optional)

      block_email block "list" (Optional) {
        html_body = string (Required)
        subject = string (Required)
        text_body = string (Required)
      }

      mfa_email block "list" (Optional) {
        html_body = string (Required)
        subject = string (Required)
        text_body = string (Required)
      }

      no_action_email block "list" (Optional) {
        html_body = string (Required)
        subject = string (Required)
        text_body = string (Required)
      }
    }
  }

  compromised_credentials_risk_configuration block "list" (Optional) {
    event_filter = ['set', 'string'] (Optional, Computed)

    actions block "list" (Required) {
      event_action = string (Required)
    }
  }

  risk_exception_configuration block "list" (Optional) {
    blocked_ip_range_list = ['set', 'string'] (Optional)
    skipped_ip_range_list = ['set', 'string'] (Optional)
  }
}
