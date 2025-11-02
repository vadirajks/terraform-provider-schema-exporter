resource "aws_acmpca_policy" "name" {
  policy = string (Required)
  resource_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
