resource "aws_iam_saml_provider" "name" {
  name = string (Required)
  saml_metadata_document = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  valid_until = string (Computed)
}
