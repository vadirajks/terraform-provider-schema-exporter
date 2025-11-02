resource "aws_dms_certificate" "name" {
  certificate_id = string (Required)
  certificate_arn = string (Computed)
  certificate_pem = string (Optional)
  certificate_wallet = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
