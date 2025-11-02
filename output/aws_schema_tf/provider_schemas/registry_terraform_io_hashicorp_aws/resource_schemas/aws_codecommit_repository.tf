resource "aws_codecommit_repository" "name" {
  repository_name = string (Required)
  arn = string (Computed)
  clone_url_http = string (Computed)
  clone_url_ssh = string (Computed)
  default_branch = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  region = string (Optional, Computed)
  repository_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
