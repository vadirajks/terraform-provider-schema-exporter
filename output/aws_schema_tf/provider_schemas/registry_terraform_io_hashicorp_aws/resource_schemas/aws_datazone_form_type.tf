resource "aws_datazone_form_type" "name" {
  domain_identifier = string (Required)
  name = string (Required)
  owning_project_identifier = string (Required)
  created_at = string (Computed)
  created_by = string (Computed)
  description = string (Optional)
  imports = ['list', ['object', {'name': 'string', 'revision': 'string'}]] (Computed)
  origin_domain_id = string (Computed)
  origin_project_id = string (Computed)
  region = string (Optional, Computed)
  revision = string (Computed)
  status = string (Optional, Computed)

  model block "list" (Optional) {
    smithy = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
