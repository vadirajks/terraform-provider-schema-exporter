resource "aws_ebs_default_kms_key" "name" {
  key_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
