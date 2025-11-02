resource "aws_lambda_code_signing_config" "name" {
  arn = string (Computed)
  config_id = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  last_modified = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  allowed_publishers block "list" (Required) {
    signing_profile_version_arns = ['set', 'string'] (Required)
  }

  policies block "list" (Optional) {
    untrusted_artifact_on_deployment = string (Required)
  }
}
