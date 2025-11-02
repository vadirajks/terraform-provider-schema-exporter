resource "aws_ecr_pull_through_cache_rule" "name" {
  ecr_repository_prefix = string (Required)
  upstream_registry_url = string (Required)
  credential_arn = string (Optional)
  custom_role_arn = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  registry_id = string (Computed)
  upstream_repository_prefix = string (Optional)
}
