data "aws_iam_saml_provider" "name" {
  arn = string (Required)
  create_date = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  saml_metadata_document = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  valid_until = string (Computed)
}
