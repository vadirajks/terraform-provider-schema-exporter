data "aws_opensearchserverless_access_policy" "name" {
  name = string (Required)
  type = string (Required)
  description = string (Computed)
  id = string (Computed)
  policy = string (Computed)
  policy_version = string (Computed)
  region = string (Optional, Computed)
}
