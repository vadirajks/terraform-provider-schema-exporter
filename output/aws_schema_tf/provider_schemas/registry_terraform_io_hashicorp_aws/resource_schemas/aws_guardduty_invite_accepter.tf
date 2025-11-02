resource "aws_guardduty_invite_accepter" "name" {
  detector_id = string (Required)
  master_account_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
