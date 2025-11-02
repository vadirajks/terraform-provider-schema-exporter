resource "aws_iot_ca_certificate" "name" {
  active = bool (Required)
  allow_auto_registration = bool (Required)
  ca_certificate_pem = string (Required)
  arn = string (Computed)
  certificate_mode = string (Optional)
  customer_version = number (Computed)
  generation_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  validity = ['list', ['object', {'not_after': 'string', 'not_before': 'string'}]] (Computed)
  verification_certificate_pem = string (Optional)

  registration_config block "list" (Optional) {
    role_arn = string (Optional)
    template_body = string (Optional)
    template_name = string (Optional)
  }
}
