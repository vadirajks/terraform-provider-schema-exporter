resource "aws_quicksight_folder_membership" "name" {
  folder_id = string (Required)
  member_id = string (Required)
  member_type = string (Required)
  aws_account_id = string (Optional, Computed)
  id = string (Computed)
  region = string (Optional, Computed)
}
