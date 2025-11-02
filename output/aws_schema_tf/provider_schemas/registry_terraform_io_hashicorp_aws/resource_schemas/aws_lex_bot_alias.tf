resource "aws_lex_bot_alias" "name" {
  bot_name = string (Required)
  bot_version = string (Required)
  name = string (Required)
  arn = string (Computed)
  checksum = string (Computed)
  created_date = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  region = string (Optional, Computed)

  conversation_logs block "list" (Optional) {
    iam_role_arn = string (Required)

    log_settings block "set" (Optional) {
      destination = string (Required)
      log_type = string (Required)
      resource_arn = string (Required)
      kms_key_arn = string (Optional)
      resource_prefix = string (Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
