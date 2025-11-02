data "aws_ssm_document" "name" {
  name = string (Required)
  arn = string (Computed)
  content = string (Computed)
  document_format = string (Optional)
  document_type = string (Computed)
  document_version = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
