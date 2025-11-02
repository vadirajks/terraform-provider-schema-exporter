resource "aws_amplify_domain_association" "name" {
  app_id = string (Required)
  domain_name = string (Required)
  arn = string (Computed)
  certificate_verification_dns_record = string (Computed)
  enable_auto_sub_domain = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  wait_for_verification = bool (Optional)

  certificate_settings block "list" (Optional) {
    type = string (Required)
    certificate_verification_dns_record = string (Computed)
    custom_certificate_arn = string (Optional)
  }

  sub_domain block "set" (Required) {
    branch_name = string (Required)
    prefix = string (Required)
    dns_record = string (Computed)
    verified = bool (Computed)
  }
}
