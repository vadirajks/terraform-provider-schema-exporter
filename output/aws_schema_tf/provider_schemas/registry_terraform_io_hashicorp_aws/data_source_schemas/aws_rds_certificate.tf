data "aws_rds_certificate" "name" {
  arn = string (Computed)
  certificate_type = string (Computed)
  customer_override = bool (Computed)
  customer_override_valid_till = string (Computed)
  default_for_new_launches = bool (Optional)
  id = string (Optional, Computed)
  latest_valid_till = bool (Optional)
  region = string (Optional, Computed)
  thumbprint = string (Computed)
  valid_from = string (Computed)
  valid_till = string (Computed)
}
