resource "aws_quicksight_group" "name" {
  group_name = string (Required)
  arn = string (Computed)
  aws_account_id = string (Optional, Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  namespace = string (Optional)
  region = string (Optional, Computed)
}
