resource "aws_inspector2_member_association" "name" {
  account_id = string (Required)
  delegated_admin_account_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  relationship_status = string (Computed)
  updated_at = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
