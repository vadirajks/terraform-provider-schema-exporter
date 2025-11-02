resource "aws_opensearchserverless_access_policy" "name" {
  name = string (Required)
  policy = string (Required)
  type = string (Required)
  description = string (Optional)
  id = string (Computed)
  policy_version = string (Computed)
  region = string (Optional, Computed)
}
