data "aws_lambda_code_signing_config" "name" {
  arn = string (Required)
  allowed_publishers = ['list', ['object', {'signing_profile_version_arns': ['set', 'string']}]] (Computed)
  config_id = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  last_modified = string (Computed)
  policies = ['list', ['object', {'untrusted_artifact_on_deployment': 'string'}]] (Computed)
  region = string (Optional, Computed)
}
