resource "aws_kms_alias" "name" {
  target_key_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  target_key_arn = string (Computed)
}
