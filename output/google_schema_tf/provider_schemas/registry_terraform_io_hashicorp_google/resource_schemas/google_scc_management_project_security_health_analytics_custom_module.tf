resource "google_scc_management_project_security_health_analytics_custom_module" "name" {
  ancestor_module = string (Computed)
  display_name = string (Optional)
  enablement_state = string (Optional)
  id = string (Optional, Computed)
  last_editor = string (Computed)
  location = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  custom_config block "list" (Optional) {
    recommendation = string (Required)
    severity = string (Required)
    description = string (Optional)

    custom_output block "list" (Optional) {

      properties block "list" (Optional) {
        name = string (Optional)

        value_expression block "list" (Optional) {
          expression = string (Required)
          description = string (Optional)
          location = string (Optional)
          title = string (Optional)
        }
      }
    }

    predicate block "list" (Required) {
      expression = string (Required)
      description = string (Optional)
      location = string (Optional)
      title = string (Optional)
    }

    resource_selector block "list" (Required) {
      resource_types = ['list', 'string'] (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
