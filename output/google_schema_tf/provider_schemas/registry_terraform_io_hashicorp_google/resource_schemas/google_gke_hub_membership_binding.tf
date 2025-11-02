resource "google_gke_hub_membership_binding" "name" {
  location = string (Required)
  membership_binding_id = string (Required)
  membership_id = string (Required)
  scope = string (Required)
  create_time = string (Computed)
  delete_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = ['list', ['object', {'code': 'string'}]] (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
