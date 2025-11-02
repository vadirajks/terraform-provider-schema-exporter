resource "google_gemini_code_tools_setting" "name" {
  code_tools_setting_id = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  enabled_tool block "list" (Required) {
    handle = string (Required)
    tool = string (Required)
    account_connector = string (Optional)
    uri_override = string (Optional)

    config block "list" (Optional) {
      key = string (Required)
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
