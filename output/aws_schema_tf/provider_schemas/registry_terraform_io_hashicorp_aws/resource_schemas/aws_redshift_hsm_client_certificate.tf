resource "aws_redshift_hsm_client_certificate" "name" {
  hsm_client_certificate_identifier = string (Required)
  arn = string (Computed)
  hsm_client_certificate_public_key = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
