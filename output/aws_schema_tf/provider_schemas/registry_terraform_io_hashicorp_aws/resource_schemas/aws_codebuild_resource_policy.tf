resource "aws_codebuild_resource_policy" "name" {
  policy = string (Required)
  resource_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
