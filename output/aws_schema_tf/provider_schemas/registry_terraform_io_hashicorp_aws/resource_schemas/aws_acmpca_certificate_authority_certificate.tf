resource "aws_acmpca_certificate_authority_certificate" "name" {
  certificate = string (Required)
  certificate_authority_arn = string (Required)
  certificate_chain = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
