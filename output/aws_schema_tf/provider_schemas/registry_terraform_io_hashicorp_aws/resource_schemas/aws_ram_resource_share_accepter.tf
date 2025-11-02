resource "aws_ram_resource_share_accepter" "name" {
  share_arn = string (Required)
  id = string (Optional, Computed)
  invitation_arn = string (Computed)
  receiver_account_id = string (Computed)
  region = string (Optional, Computed)
  resources = ['list', 'string'] (Computed)
  sender_account_id = string (Computed)
  share_id = string (Computed)
  share_name = string (Computed)
  status = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
