data "aws_acmpca_certificate" "name" {
  arn = string (Required)
  certificate_authority_arn = string (Required)
  certificate = string (Computed)
  certificate_chain = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
