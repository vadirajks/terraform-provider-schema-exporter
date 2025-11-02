resource "aws_codebuild_source_credential" "name" {
  auth_type = string (Required)
  server_type = string (Required)
  token = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  user_name = string (Optional)
}
