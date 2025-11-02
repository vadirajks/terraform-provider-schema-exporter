data "aws_caller_identity" "name" {
  account_id = string (Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  user_id = string (Computed)
}
