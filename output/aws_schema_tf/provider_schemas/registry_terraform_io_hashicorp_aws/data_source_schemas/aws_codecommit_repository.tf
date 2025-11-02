data "aws_codecommit_repository" "name" {
  repository_name = string (Required)
  arn = string (Computed)
  clone_url_http = string (Computed)
  clone_url_ssh = string (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Computed)
  region = string (Optional, Computed)
  repository_id = string (Computed)
}
