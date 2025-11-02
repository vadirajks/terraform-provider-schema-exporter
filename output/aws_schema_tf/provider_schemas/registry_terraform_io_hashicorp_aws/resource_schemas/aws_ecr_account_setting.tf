resource "aws_ecr_account_setting" "name" {
  name = string (Required)
  value = string (Required)
  region = string (Optional, Computed)
}
