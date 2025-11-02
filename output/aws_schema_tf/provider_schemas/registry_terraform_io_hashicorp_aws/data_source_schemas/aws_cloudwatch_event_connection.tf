data "aws_cloudwatch_event_connection" "name" {
  name = string (Required)
  arn = string (Computed)
  authorization_type = string (Computed)
  id = string (Optional, Computed)
  kms_key_identifier = string (Computed)
  region = string (Optional, Computed)
  secret_arn = string (Computed)
}
