resource "azurerm_automation_runbook" "name" {
  automation_account_name = string (Required)
  location = string (Required)
  log_progress = bool (Required)
  log_verbose = bool (Required)
  name = string (Required)
  resource_group_name = string (Required)
  runbook_type = string (Required)
  content = string (Optional, Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  job_schedule = ['set', ['object', {'job_schedule_id': 'string', 'parameters': ['map', 'string'], 'run_on': 'string', 'schedule_name': 'string'}]] (Optional, Computed)
  log_activity_trace_level = number (Optional)
  tags = ['map', 'string'] (Optional)

  draft block "list" (Optional) {
    creation_time = string (Computed)
    edit_mode_enabled = bool (Optional)
    last_modified_time = string (Computed)
    output_types = ['list', 'string'] (Optional)

    content_link block "list" (Optional) {
      uri = string (Required)
      version = string (Optional)

      hash block "list" (Optional) {
        algorithm = string (Required)
        value = string (Required)
      }
    }

    parameters block "list" (Optional) {
      key = string (Required)
      type = string (Required)
      default_value = string (Optional)
      mandatory = bool (Optional)
      position = number (Optional)
    }
  }

  publish_content_link block "list" (Optional) {
    uri = string (Required)
    version = string (Optional)

    hash block "list" (Optional) {
      algorithm = string (Required)
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
