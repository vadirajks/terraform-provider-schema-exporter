data "aws_opensearchserverless_security_policy" "name" {
  name = string (Required)
  type = string (Required)
  created_date = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  last_modified_date = string (Computed)
  policy = string (Computed)
  policy_version = string (Computed)
  region = string (Optional, Computed)
}
