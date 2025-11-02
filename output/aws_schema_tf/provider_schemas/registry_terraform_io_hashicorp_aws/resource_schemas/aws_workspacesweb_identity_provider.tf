resource "aws_workspacesweb_identity_provider" "name" {
  identity_provider_details = ['map', 'string'] (Required)
  identity_provider_name = string (Required)
  identity_provider_type = string (Required)
  portal_arn = string (Required)
  identity_provider_arn = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
