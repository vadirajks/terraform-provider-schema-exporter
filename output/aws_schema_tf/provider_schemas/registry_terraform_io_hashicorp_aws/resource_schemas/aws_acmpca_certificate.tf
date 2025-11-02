resource "aws_acmpca_certificate" "name" {
  certificate_authority_arn = string (Required)
  certificate_signing_request = string (Required)
  signing_algorithm = string (Required)
  api_passthrough = string (Optional)
  arn = string (Computed)
  certificate = string (Computed)
  certificate_chain = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  template_arn = string (Optional)

  validity block "list" (Required) {
    type = string (Required)
    value = string (Required)
  }
}
