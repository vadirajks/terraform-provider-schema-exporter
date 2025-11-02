data "aws_kms_secrets" "name" {
  id = string (Optional, Computed)
  plaintext = ['map', 'string'] (Computed)
  region = string (Optional, Computed)

  secret block "set" (Required) {
    name = string (Required)
    payload = string (Required)
    context = ['map', 'string'] (Optional)
    encryption_algorithm = string (Optional)
    grant_tokens = ['list', 'string'] (Optional)
    key_id = string (Optional)
  }
}
