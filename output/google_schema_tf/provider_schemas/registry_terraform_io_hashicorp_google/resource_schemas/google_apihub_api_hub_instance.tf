resource "google_apihub_api_hub_instance" "name" {
  location = string (Required)
  api_hub_instance_id = string (Optional)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  state_message = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  config block "list" (Required) {
    cmek_key_name = string (Optional)
    disable_search = bool (Optional)
    encryption_type = string (Optional, Computed)
    vertex_location = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
