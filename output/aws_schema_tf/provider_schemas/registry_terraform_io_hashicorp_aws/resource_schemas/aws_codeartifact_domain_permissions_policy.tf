resource "aws_codeartifact_domain_permissions_policy" "name" {
  domain = string (Required)
  domain_owner = string (Optional, Computed)
  id = string (Optional, Computed)
  policy_document = string (Optional, Computed)
  policy_revision = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_arn = string (Computed)
}
