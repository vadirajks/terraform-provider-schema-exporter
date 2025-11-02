resource "google_dialogflow_cx_environment" "name" {
  display_name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  parent = string (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  version_configs block "list" (Required) {
    version = string (Required)
  }
}
