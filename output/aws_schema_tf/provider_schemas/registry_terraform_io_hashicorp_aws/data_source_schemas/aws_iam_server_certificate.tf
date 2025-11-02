data "aws_iam_server_certificate" "name" {
  arn = string (Computed)
  certificate_body = string (Computed)
  certificate_chain = string (Computed)
  expiration_date = string (Computed)
  id = string (Optional, Computed)
  latest = bool (Optional)
  name = string (Optional, Computed)
  name_prefix = string (Optional)
  path = string (Computed)
  path_prefix = string (Optional)
  upload_date = string (Computed)
}
