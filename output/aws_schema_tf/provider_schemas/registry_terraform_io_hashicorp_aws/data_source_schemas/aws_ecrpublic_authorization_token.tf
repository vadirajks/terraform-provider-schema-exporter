data "aws_ecrpublic_authorization_token" "name" {
  authorization_token = string (Computed)
  expires_at = string (Computed)
  id = string (Optional, Computed)
  password = string (Computed)
  region = string (Optional, Computed)
  user_name = string (Computed)
}
