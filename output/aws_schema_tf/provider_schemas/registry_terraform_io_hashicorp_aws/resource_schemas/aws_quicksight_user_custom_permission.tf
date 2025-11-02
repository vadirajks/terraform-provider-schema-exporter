resource "aws_quicksight_user_custom_permission" "name" {
  custom_permissions_name = string (Required)
  user_name = string (Required)
  aws_account_id = string (Optional, Computed)
  namespace = string (Optional, Computed)
  region = string (Optional, Computed)
}
