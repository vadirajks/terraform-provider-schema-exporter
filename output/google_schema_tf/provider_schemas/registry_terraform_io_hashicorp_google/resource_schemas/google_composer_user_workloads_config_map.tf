resource "google_composer_user_workloads_config_map" "name" {
  environment = string (Required)
  name = string (Required)
  data = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
