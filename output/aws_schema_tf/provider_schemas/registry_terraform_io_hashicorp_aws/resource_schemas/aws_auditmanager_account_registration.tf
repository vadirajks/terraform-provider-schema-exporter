resource "aws_auditmanager_account_registration" "name" {
  delegated_admin_account = string (Optional)
  deregister_on_destroy = bool (Optional)
  id = string (Computed)
  kms_key = string (Optional)
  region = string (Optional, Computed)
  status = string (Computed)
}
