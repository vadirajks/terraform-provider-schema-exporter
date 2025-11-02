data "aws_lex_intent" "name" {
  name = string (Required)
  arn = string (Computed)
  checksum = string (Computed)
  created_date = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  parent_intent_signature = string (Computed)
  region = string (Optional, Computed)
  version = string (Optional)
}
