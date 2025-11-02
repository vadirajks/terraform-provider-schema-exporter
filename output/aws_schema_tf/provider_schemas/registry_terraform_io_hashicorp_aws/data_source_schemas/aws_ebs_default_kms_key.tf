data "aws_ebs_default_kms_key" "name" {
  id = string (Optional, Computed)
  key_arn = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
