data "aws_lakeformation_resource" "name" {
  arn = string (Required)
  hybrid_access_enabled = bool (Computed)
  id = string (Optional, Computed)
  last_modified = string (Computed)
  region = string (Optional, Computed)
  role_arn = string (Computed)
  with_federation = bool (Computed)
  with_privileged_access = bool (Computed)
}
