data "aws_iam_user_ssh_key" "name" {
  encoding = string (Required)
  ssh_public_key_id = string (Required)
  username = string (Required)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  public_key = string (Computed)
  status = string (Computed)
}
