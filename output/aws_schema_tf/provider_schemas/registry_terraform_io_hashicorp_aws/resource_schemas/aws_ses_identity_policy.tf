resource "aws_ses_identity_policy" "name" {
  identity = string (Required)
  name = string (Required)
  policy = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
