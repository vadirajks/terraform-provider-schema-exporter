resource "google_apihub_plugin" "name" {
  display_name = string (Required)
  location = string (Required)
  plugin_id = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  ownership_type = string (Computed)
  plugin_category = string (Optional)
  project = string (Optional, Computed)
  state = string (Computed)
  update_time = string (Computed)

  actions_config block "list" (Optional) {
    description = string (Required)
    display_name = string (Required)
    id = string (Required)
    trigger_mode = string (Required)
  }

  config_template block "list" (Optional) {

    additional_config_template block "list" (Optional) {
      id = string (Required)
      value_type = string (Required)
      description = string (Optional)
      required = bool (Optional)
      validation_regex = string (Optional)

      enum_options block "list" (Optional) {
        display_name = string (Required)
        id = string (Required)
        description = string (Optional)
      }

      multi_select_options block "list" (Optional) {
        display_name = string (Required)
        id = string (Required)
        description = string (Optional)
      }
    }

    auth_config_template block "list" (Optional) {
      supported_auth_types = ['list', 'string'] (Required)

      service_account block "list" (Optional) {
        service_account = string (Required)
      }
    }
  }

  documentation block "list" (Optional) {
    external_uri = string (Optional)
  }

  hosting_service block "list" (Optional) {
    service_uri = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
