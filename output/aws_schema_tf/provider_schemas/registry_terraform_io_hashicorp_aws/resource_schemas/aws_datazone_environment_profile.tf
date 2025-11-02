resource "aws_datazone_environment_profile" "name" {
  aws_account_region = string (Required)
  domain_identifier = string (Required)
  environment_blueprint_identifier = string (Required)
  name = string (Required)
  project_identifier = string (Required)
  aws_account_id = string (Optional, Computed)
  created_at = string (Computed)
  created_by = string (Computed)
  description = string (Optional, Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  updated_at = string (Computed)

  user_parameters block "list" (Optional) {
    name = string (Optional)
    value = string (Optional)
  }
}
