resource "aws_iam_user_ssh_key" "name" {
  encoding = string (Required)
  public_key = string (Required)
  username = string (Required)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  ssh_public_key_id = string (Computed)
  status = string (Optional, Computed)
}
