data "aws_iam_account_alias" "name" {
  account_alias = string (Computed)
  id = string (Optional, Computed)
}
