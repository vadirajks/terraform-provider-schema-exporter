resource "aws_inspector2_delegated_admin_account" "name" {
  account_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  relationship_status = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
