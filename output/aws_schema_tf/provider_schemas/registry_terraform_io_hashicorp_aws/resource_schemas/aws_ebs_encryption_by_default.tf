resource "aws_ebs_encryption_by_default" "name" {
  enabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
