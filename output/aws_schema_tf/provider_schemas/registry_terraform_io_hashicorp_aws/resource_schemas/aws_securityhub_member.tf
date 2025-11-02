resource "aws_securityhub_member" "name" {
  account_id = string (Required)
  email = string (Optional)
  id = string (Optional, Computed)
  invite = bool (Optional)
  master_id = string (Computed)
  member_status = string (Computed)
  region = string (Optional, Computed)
}
