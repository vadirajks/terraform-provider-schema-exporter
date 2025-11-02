data "aws_iam_session_context" "name" {
  arn = string (Required)
  id = string (Optional, Computed)
  issuer_arn = string (Computed)
  issuer_id = string (Computed)
  issuer_name = string (Computed)
  session_name = string (Computed)
}
