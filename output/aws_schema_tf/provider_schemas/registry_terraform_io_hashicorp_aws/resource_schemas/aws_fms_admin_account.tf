resource "aws_fms_admin_account" "name" {
  account_id = string (Optional, Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
