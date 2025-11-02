data "aws_serverlessapplicationrepository_application" "name" {
  application_id = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  required_capabilities = ['set', 'string'] (Computed)
  semantic_version = string (Optional, Computed)
  source_code_url = string (Computed)
  template_url = string (Computed)
}
