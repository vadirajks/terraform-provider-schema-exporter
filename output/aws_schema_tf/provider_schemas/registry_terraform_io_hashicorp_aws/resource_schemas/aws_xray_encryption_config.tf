resource "aws_xray_encryption_config" "name" {
  type = string (Required)
  id = string (Optional, Computed)
  key_id = string (Optional)
  region = string (Optional, Computed)
}
