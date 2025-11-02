resource "aws_signer_signing_profile" "name" {
  platform_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  platform_display_name = string (Computed)
  region = string (Optional, Computed)
  revocation_record = ['list', ['object', {'revocation_effective_from': 'string', 'revoked_at': 'string', 'revoked_by': 'string'}]] (Computed)
  signing_parameters = ['map', 'string'] (Optional)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version = string (Computed)
  version_arn = string (Computed)

  signature_validity_period block "list" (Optional) {
    type = string (Required)
    value = number (Required)
  }

  signing_material block "list" (Optional) {
    certificate_arn = string (Required)
  }
}
