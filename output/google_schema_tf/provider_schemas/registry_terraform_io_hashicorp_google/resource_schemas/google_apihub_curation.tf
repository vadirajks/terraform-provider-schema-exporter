resource "google_apihub_curation" "name" {
  curation_id = string (Required)
  display_name = string (Required)
  location = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  last_execution_error_code = string (Computed)
  last_execution_error_message = string (Computed)
  last_execution_state = string (Computed)
  name = string (Computed)
  plugin_instance_actions = ['list', ['object', {'action_id': 'string', 'plugin_instance': 'string'}]] (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  endpoint block "list" (Required) {

    application_integration_endpoint_details block "list" (Required) {
      trigger_id = string (Required)
      uri = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
