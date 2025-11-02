resource "aws_macie2_member" "name" {
  account_id = string (Required)
  email = string (Required)
  administrator_account_id = string (Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  invitation_disable_email_notification = bool (Optional)
  invitation_message = string (Optional)
  invite = bool (Optional, Computed)
  invited_at = string (Computed)
  master_account_id = string (Computed)
  region = string (Optional, Computed)
  relationship_status = string (Computed)
  status = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  updated_at = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
