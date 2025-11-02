data "aws_kms_alias" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  target_key_arn = string (Computed)
  target_key_id = string (Computed)
}
