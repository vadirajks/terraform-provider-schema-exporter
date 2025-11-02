resource "aws_datazone_project" "name" {
  domain_identifier = string (Required)
  name = string (Required)
  created_at = string (Computed)
  created_by = string (Computed)
  description = string (Optional)
  failure_reasons = ['list', ['object', {'code': 'string', 'message': 'string'}]] (Computed)
  glossary_terms = ['list', 'string'] (Optional)
  id = string (Computed)
  last_updated_at = string (Computed)
  project_status = string (Computed)
  region = string (Optional, Computed)
  skip_deletion_check = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
