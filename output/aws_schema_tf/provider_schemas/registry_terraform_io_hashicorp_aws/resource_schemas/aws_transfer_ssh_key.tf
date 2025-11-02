resource "aws_transfer_ssh_key" "name" {
  body = string (Required)
  server_id = string (Required)
  user_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  ssh_key_id = string (Computed)
}
