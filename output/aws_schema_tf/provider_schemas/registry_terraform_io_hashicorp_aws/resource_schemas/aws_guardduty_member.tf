resource "aws_guardduty_member" "name" {
  account_id = string (Required)
  detector_id = string (Required)
  email = string (Required)
  disable_email_notification = bool (Optional)
  id = string (Optional, Computed)
  invitation_message = string (Optional)
  invite = bool (Optional)
  region = string (Optional, Computed)
  relationship_status = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
