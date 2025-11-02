data "aws_ebs_encryption_by_default" "name" {
  enabled = bool (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
