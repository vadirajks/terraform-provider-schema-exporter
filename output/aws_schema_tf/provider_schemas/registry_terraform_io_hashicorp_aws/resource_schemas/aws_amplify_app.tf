resource "aws_amplify_app" "name" {
  name = string (Required)
  access_token = string (Optional)
  arn = string (Computed)
  auto_branch_creation_patterns = ['set', 'string'] (Optional)
  basic_auth_credentials = string (Optional)
  build_spec = string (Optional, Computed)
  compute_role_arn = string (Optional)
  custom_headers = string (Optional, Computed)
  default_domain = string (Computed)
  description = string (Optional)
  enable_auto_branch_creation = bool (Optional)
  enable_basic_auth = bool (Optional)
  enable_branch_auto_build = bool (Optional)
  enable_branch_auto_deletion = bool (Optional)
  environment_variables = ['map', 'string'] (Optional)
  iam_service_role_arn = string (Optional)
  id = string (Optional, Computed)
  oauth_token = string (Optional)
  platform = string (Optional)
  production_branch = ['list', ['object', {'branch_name': 'string', 'last_deploy_time': 'string', 'status': 'string', 'thumbnail_url': 'string'}]] (Computed)
  region = string (Optional, Computed)
  repository = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  auto_branch_creation_config block "list" (Optional) {
    basic_auth_credentials = string (Optional)
    build_spec = string (Optional)
    enable_auto_build = bool (Optional)
    enable_basic_auth = bool (Optional)
    enable_performance_mode = bool (Optional)
    enable_pull_request_preview = bool (Optional)
    environment_variables = ['map', 'string'] (Optional)
    framework = string (Optional)
    pull_request_environment_name = string (Optional)
    stage = string (Optional)
  }

  cache_config block "list" (Optional) {
    type = string (Required)
  }

  custom_rule block "list" (Optional) {
    source = string (Required)
    target = string (Required)
    condition = string (Optional)
    status = string (Optional)
  }

  job_config block "list" (Optional) {
    build_compute_type = string (Optional, Computed)
  }
}
