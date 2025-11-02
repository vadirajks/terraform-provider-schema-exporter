resource "aws_rds_certificate" "name" {
  certificate_identifier = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
