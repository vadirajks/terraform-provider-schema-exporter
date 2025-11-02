resource "aws_quicksight_role_membership" "name" {
  member_name = string (Required)
  role = string (Required)
  aws_account_id = string (Optional, Computed)
  namespace = string (Optional, Computed)
  region = string (Optional, Computed)
}
