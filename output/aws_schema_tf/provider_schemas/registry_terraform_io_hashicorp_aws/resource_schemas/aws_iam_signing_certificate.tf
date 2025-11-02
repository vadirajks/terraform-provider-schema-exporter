resource "aws_iam_signing_certificate" "name" {
  certificate_body = string (Required)
  user_name = string (Required)
  certificate_id = string (Computed)
  id = string (Optional, Computed)
  status = string (Optional)
}
