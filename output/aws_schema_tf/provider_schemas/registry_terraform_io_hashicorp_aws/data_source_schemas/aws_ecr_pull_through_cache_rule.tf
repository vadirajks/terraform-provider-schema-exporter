data "aws_ecr_pull_through_cache_rule" "name" {
  ecr_repository_prefix = string (Required)
  credential_arn = string (Computed)
  custom_role_arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  registry_id = string (Computed)
  upstream_registry_url = string (Computed)
  upstream_repository_prefix = string (Computed)
}
