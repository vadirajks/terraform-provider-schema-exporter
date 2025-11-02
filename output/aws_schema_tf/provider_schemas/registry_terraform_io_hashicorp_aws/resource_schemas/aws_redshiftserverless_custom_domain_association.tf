resource "aws_redshiftserverless_custom_domain_association" "name" {
  custom_domain_certificate_arn = string (Required)
  custom_domain_name = string (Required)
  workgroup_name = string (Required)
  custom_domain_certificate_expiry_time = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
}
