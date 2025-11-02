resource "aws_sagemaker_code_repository" "name" {
  code_repository_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  git_config block "list" (Required) {
    repository_url = string (Required)
    branch = string (Optional)
    secret_arn = string (Optional)
  }
}
