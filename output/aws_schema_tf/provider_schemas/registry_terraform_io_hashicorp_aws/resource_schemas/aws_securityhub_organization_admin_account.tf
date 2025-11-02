resource "aws_securityhub_organization_admin_account" "name" {
  admin_account_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
