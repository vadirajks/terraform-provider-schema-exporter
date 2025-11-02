data "aws_sesv2_email_identity" "name" {
  email_identity = string (Required)
  arn = string (Computed)
  configuration_set_name = string (Computed)
  dkim_signing_attributes = ['list', ['object', {'current_signing_key_length': 'string', 'domain_signing_private_key': 'string', 'domain_signing_selector': 'string', 'last_key_generation_timestamp': 'string', 'next_signing_key_length': 'string', 'signing_attributes_origin': 'string', 'status': 'string', 'tokens': ['list', 'string']}]] (Computed)
  id = string (Optional, Computed)
  identity_type = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  verification_status = string (Computed)
  verified_for_sending_status = bool (Computed)
}
