resource "aws_auditmanager_organization_admin_account_registration" "name" {
  admin_account_id = string (Required)
  id = string (Computed)
  organization_id = string (Computed)
  region = string (Optional, Computed)
}
