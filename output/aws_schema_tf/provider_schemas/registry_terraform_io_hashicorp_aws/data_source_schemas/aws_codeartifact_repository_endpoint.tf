data "aws_codeartifact_repository_endpoint" "name" {
  domain = string (Required)
  format = string (Required)
  repository = string (Required)
  domain_owner = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  repository_endpoint = string (Computed)
}
