resource "aws_bedrockagentcore_api_key_credential_provider" "name" {
  name = string (Required)
  api_key = string (Optional)
  api_key_secret_arn = ['list', ['object', {'secret_arn': 'string'}]] (Computed)
  api_key_wo = string (Optional)
  api_key_wo_version = number (Optional)
  credential_provider_arn = string (Computed)
  region = string (Optional, Computed)
}
