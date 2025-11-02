resource "aws_kms_grant" "name" {
  grantee_principal = string (Required)
  key_id = string (Required)
  operations = ['set', 'string'] (Required)
  grant_creation_tokens = ['set', 'string'] (Optional)
  grant_id = string (Computed)
  grant_token = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  region = string (Optional, Computed)
  retire_on_delete = bool (Optional)
  retiring_principal = string (Optional)

  constraints block "set" (Optional) {
    encryption_context_equals = ['map', 'string'] (Optional)
    encryption_context_subset = ['map', 'string'] (Optional)
  }
}
