resource "aws_quicksight_group_membership" "name" {
  group_name = string (Required)
  member_name = string (Required)
  arn = string (Computed)
  aws_account_id = string (Optional, Computed)
  id = string (Optional, Computed)
  namespace = string (Optional)
  region = string (Optional, Computed)
}
