resource "aws_codedeploy_app" "name" {
  name = string (Required)
  application_id = string (Computed)
  arn = string (Computed)
  compute_platform = string (Optional)
  github_account_name = string (Computed)
  id = string (Optional, Computed)
  linked_to_github = bool (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
