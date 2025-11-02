resource "aws_quicksight_role_custom_permission" "name" {
  custom_permissions_name = string (Required)
  role = string (Required)
  aws_account_id = string (Optional, Computed)
  namespace = string (Optional, Computed)
  region = string (Optional, Computed)
}
