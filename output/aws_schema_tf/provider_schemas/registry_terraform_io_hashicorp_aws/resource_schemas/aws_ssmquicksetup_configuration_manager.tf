resource "aws_ssmquicksetup_configuration_manager" "name" {
  name = string (Required)
  description = string (Optional, Computed)
  manager_arn = string (Computed)
  region = string (Optional, Computed)
  status_summaries = ['list', ['object', {'status': 'string', 'status_message': 'string', 'status_type': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  configuration_definition block "list" (Optional) {
    parameters = ['map', 'string'] (Required)
    type = string (Required)
    id = string (Computed)
    local_deployment_administration_role_arn = string (Optional)
    local_deployment_execution_role_name = string (Optional)
    type_version = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
