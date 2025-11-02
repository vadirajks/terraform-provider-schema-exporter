resource "aws_macie2_invitation_accepter" "name" {
  administrator_account_id = string (Required)
  id = string (Optional, Computed)
  invitation_id = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
