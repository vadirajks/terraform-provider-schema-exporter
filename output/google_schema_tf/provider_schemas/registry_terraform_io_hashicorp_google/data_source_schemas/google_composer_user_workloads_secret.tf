data "google_composer_user_workloads_secret" "name" {
  environment = string (Required)
  name = string (Required)
  data = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  project = string (Optional)
  region = string (Optional)
}
