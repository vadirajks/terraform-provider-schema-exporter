resource "aws_datazone_environment" "name" {
  domain_identifier = string (Required)
  name = string (Required)
  profile_identifier = string (Required)
  project_identifier = string (Required)
  account_identifier = string (Optional, Computed)
  account_region = string (Optional, Computed)
  blueprint_identifier = string (Optional, Computed)
  created_at = string (Computed)
  created_by = string (Computed)
  description = string (Optional)
  glossary_terms = ['list', 'string'] (Optional)
  id = string (Computed)
  last_deployment = ['list', ['object', {'deployment_id': 'string', 'deployment_status': 'string', 'deployment_type': 'string', 'failure_reasons': ['list', ['object', {'code': 'string', 'message': 'string'}]], 'is_deployment_complete': 'bool', 'messages': ['list', 'string']}]] (Computed)
  provider_environment = string (Computed)
  provisioned_resources = ['list', ['object', {'name': 'string', 'provider': 'string', 'type': 'string', 'value': 'string'}]] (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  user_parameters block "list" (Optional) {
    name = string (Optional)
    value = string (Optional)
  }
}
