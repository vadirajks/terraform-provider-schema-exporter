resource "aws_ses_receipt_rule" "name" {
  name = string (Required)
  rule_set_name = string (Required)
  after = string (Optional)
  arn = string (Computed)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  recipients = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
  scan_enabled = bool (Optional)
  tls_policy = string (Optional, Computed)

  add_header_action block "set" (Optional) {
    header_name = string (Required)
    header_value = string (Required)
    position = number (Required)
  }

  bounce_action block "set" (Optional) {
    message = string (Required)
    position = number (Required)
    sender = string (Required)
    smtp_reply_code = string (Required)
    status_code = string (Optional)
    topic_arn = string (Optional)
  }

  lambda_action block "set" (Optional) {
    function_arn = string (Required)
    position = number (Required)
    invocation_type = string (Optional)
    topic_arn = string (Optional)
  }

  s3_action block "set" (Optional) {
    bucket_name = string (Required)
    position = number (Required)
    iam_role_arn = string (Optional)
    kms_key_arn = string (Optional)
    object_key_prefix = string (Optional)
    topic_arn = string (Optional)
  }

  sns_action block "set" (Optional) {
    position = number (Required)
    topic_arn = string (Required)
    encoding = string (Optional)
  }

  stop_action block "set" (Optional) {
    position = number (Required)
    scope = string (Required)
    topic_arn = string (Optional)
  }

  workmail_action block "set" (Optional) {
    organization_arn = string (Required)
    position = number (Required)
    topic_arn = string (Optional)
  }
}
