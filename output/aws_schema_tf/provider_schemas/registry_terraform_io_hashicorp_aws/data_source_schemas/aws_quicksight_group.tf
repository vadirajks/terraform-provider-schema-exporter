data "aws_quicksight_group" "name" {
  group_name = string (Required)
  arn = string (Computed)
  aws_account_id = string (Optional, Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  namespace = string (Optional)
  principal_id = string (Computed)
  region = string (Optional, Computed)
}
