resource "aws_acm_certificate_validation" "name" {
  certificate_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  validation_record_fqdns = ['set', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
