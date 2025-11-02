data "aws_lex_bot_alias" "name" {
  bot_name = string (Required)
  name = string (Required)
  arn = string (Computed)
  bot_version = string (Computed)
  checksum = string (Computed)
  created_date = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  region = string (Optional, Computed)
}
