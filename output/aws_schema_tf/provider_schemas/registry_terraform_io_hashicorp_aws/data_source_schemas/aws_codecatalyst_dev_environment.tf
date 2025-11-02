data "aws_codecatalyst_dev_environment" "name" {
  env_id = string (Required)
  project_name = string (Required)
  space_name = string (Required)
  alias = string (Optional)
  creator_id = string (Optional)
  id = string (Optional, Computed)
  ides = ['list', ['object', {'name': 'string', 'runtime': 'string'}]] (Computed)
  inactivity_timeout_minutes = number (Computed)
  instance_type = string (Computed)
  last_updated_time = string (Computed)
  persistent_storage = ['list', ['object', {'size': 'number'}]] (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  status_reason = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)

  repositories block "list" (Optional) {
    branch_name = string (Computed)
    repository_name = string (Computed)
  }
}
