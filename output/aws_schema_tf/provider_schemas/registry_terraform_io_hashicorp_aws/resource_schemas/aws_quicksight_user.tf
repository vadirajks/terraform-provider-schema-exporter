resource "aws_quicksight_user" "name" {
  email = string (Required)
  identity_type = string (Required)
  user_role = string (Required)
  arn = string (Computed)
  aws_account_id = string (Optional, Computed)
  iam_arn = string (Optional)
  id = string (Optional, Computed)
  namespace = string (Optional)
  region = string (Optional, Computed)
  session_name = string (Optional)
  user_invitation_url = string (Computed)
  user_name = string (Optional, Computed)
}
