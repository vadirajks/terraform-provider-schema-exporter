resource "aws_secretsmanager_secret_policy" "name" {
  policy = string (Required)
  secret_arn = string (Required)
  block_public_policy = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
