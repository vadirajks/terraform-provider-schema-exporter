resource "google_scc_organization_custom_module" "name" {
  display_name = string (Required)
  enablement_state = string (Required)
  organization = string (Required)
  ancestor_module = string (Computed)
  id = string (Optional, Computed)
  last_editor = string (Computed)
  name = string (Computed)
  update_time = string (Computed)

  custom_config block "list" (Required) {
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
