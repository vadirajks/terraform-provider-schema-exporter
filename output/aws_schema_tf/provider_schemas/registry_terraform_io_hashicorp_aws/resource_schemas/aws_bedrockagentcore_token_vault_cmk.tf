resource "aws_bedrockagentcore_token_vault_cmk" "name" {
  region = string (Optional, Computed)
  token_vault_id = string (Optional, Computed)

  kms_configuration block "list" (Optional) {
    key_type = string (Required)
    kms_key_arn = string (Optional)
  }
}
