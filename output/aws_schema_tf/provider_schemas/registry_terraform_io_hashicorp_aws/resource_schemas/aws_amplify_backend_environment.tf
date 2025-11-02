resource "aws_amplify_backend_environment" "name" {
  app_id = string (Required)
  environment_name = string (Required)
  arn = string (Computed)
  deployment_artifacts = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  stack_name = string (Optional, Computed)
}
