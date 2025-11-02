resource "aws_codeartifact_repository_permissions_policy" "name" {
  domain = string (Required)
  policy_document = string (Required)
  repository = string (Required)
  domain_owner = string (Optional, Computed)
  id = string (Optional, Computed)
  policy_revision = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_arn = string (Computed)
}
