resource "google_spanner_instance_config" "name" {
  display_name = string (Required)
  base_config = string (Optional, Computed)
  config_type = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Optional, Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  replicas block "set" (Required) {
    default_leader_location = bool (Optional)
    location = string (Optional)
    type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
