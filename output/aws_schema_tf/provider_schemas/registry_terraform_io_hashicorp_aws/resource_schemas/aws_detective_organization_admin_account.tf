resource "aws_detective_organization_admin_account" "name" {
  account_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
