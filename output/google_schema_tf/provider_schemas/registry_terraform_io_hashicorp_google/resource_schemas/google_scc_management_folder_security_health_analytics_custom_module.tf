resource "google_scc_management_folder_security_health_analytics_custom_module" "name" {
  folder = string (Required)
  ancestor_module = string (Computed)
  display_name = string (Optional)
  enablement_state = string (Optional)
  id = string (Optional, Computed)
  last_editor = string (Computed)
  location = string (Optional)
  name = string (Computed)
  update_time = string (Computed)

  custom_config block "list" (Optional) {
    description = string (Optional)
    recommendation = string (Optional)
    severity = string (Optional)

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

    predicate block "list" (Optional) {
      expression = string (Required)
      description = string (Optional)
      location = string (Optional)
      title = string (Optional)
    }

    resource_selector block "list" (Optional) {
      resource_types = ['list', 'string'] (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
