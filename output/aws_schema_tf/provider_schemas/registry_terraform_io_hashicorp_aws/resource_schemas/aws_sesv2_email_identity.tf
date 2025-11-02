resource "aws_sesv2_email_identity" "name" {
  email_identity = string (Required)
  arn = string (Computed)
  configuration_set_name = string (Optional)
  id = string (Optional, Computed)
  identity_type = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  verification_status = string (Computed)
  verified_for_sending_status = bool (Computed)

  dkim_signing_attributes block "list" (Optional) {
    current_signing_key_length = string (Computed)
    domain_signing_private_key = string (Optional)
    domain_signing_selector = string (Optional)
    last_key_generation_timestamp = string (Computed)
    next_signing_key_length = string (Optional, Computed)
    signing_attributes_origin = string (Computed)
    status = string (Computed)
    tokens = ['list', 'string'] (Computed)
  }
}
