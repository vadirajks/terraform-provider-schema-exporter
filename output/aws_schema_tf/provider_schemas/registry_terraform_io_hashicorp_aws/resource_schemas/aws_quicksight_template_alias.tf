resource "aws_quicksight_template_alias" "name" {
  alias_name = string (Required)
  template_id = string (Required)
  template_version_number = number (Required)
  arn = string (Computed)
  aws_account_id = string (Optional, Computed)
  id = string (Computed)
  region = string (Optional, Computed)
}
