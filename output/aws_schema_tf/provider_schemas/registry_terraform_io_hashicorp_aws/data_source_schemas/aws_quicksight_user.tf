data "aws_quicksight_user" "name" {
  user_name = string (Required)
  active = bool (Computed)
  arn = string (Computed)
  aws_account_id = string (Optional, Computed)
  custom_permissions_name = string (Computed)
  email = string (Computed)
  id = string (Optional, Computed)
  identity_type = string (Computed)
  namespace = string (Optional)
  principal_id = string (Computed)
  region = string (Optional, Computed)
  user_role = string (Computed)
}
