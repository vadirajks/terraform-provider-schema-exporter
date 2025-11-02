resource "aws_dynamodb_resource_policy" "name" {
  policy = string (Required)
  resource_arn = string (Required)
  confirm_remove_self_resource_access = bool (Optional, Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  revision_id = string (Computed)
}
