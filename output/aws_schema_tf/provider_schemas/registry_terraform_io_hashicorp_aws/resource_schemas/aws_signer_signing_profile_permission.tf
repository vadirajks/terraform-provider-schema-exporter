resource "aws_signer_signing_profile_permission" "name" {
  action = string (Required)
  principal = string (Required)
  profile_name = string (Required)
  id = string (Optional, Computed)
  profile_version = string (Optional, Computed)
  region = string (Optional, Computed)
  statement_id = string (Optional, Computed)
  statement_id_prefix = string (Optional, Computed)
}
