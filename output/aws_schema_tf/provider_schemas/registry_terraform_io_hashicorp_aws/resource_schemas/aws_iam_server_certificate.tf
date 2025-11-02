resource "aws_iam_server_certificate" "name" {
  certificate_body = string (Required)
  private_key = string (Required)
  arn = string (Computed)
  certificate_chain = string (Optional)
  expiration = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  path = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  upload_date = string (Computed)

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
