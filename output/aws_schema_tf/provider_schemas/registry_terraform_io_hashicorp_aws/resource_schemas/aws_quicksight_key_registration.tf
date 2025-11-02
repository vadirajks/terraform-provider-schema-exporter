resource "aws_quicksight_key_registration" "name" {
  aws_account_id = string (Optional, Computed)
  region = string (Optional, Computed)

  key_registration block "set" (Optional) {
    key_arn = string (Required)
    default_key = bool (Optional, Computed)
  }
}
