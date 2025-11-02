resource "aws_securityhub_invite_accepter" "name" {
  master_id = string (Required)
  id = string (Optional, Computed)
  invitation_id = string (Computed)
  region = string (Optional, Computed)
}
