resource "aws_lakeformation_resource" "name" {
  arn = string (Required)
  hybrid_access_enabled = bool (Optional, Computed)
  id = string (Optional, Computed)
  last_modified = string (Computed)
  region = string (Optional, Computed)
  role_arn = string (Optional, Computed)
  use_service_linked_role = bool (Optional)
  with_federation = bool (Optional, Computed)
  with_privileged_access = bool (Optional, Computed)
}
