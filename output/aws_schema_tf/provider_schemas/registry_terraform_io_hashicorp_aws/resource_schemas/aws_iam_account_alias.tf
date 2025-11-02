resource "aws_iam_account_alias" "name" {
  account_alias = string (Required)
  id = string (Optional, Computed)
}
