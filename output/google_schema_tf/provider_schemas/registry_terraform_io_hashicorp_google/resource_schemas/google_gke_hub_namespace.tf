resource "google_gke_hub_namespace" "name" {
  scope = string (Required)
  scope_id = string (Required)
  scope_namespace_id = string (Required)
  create_time = string (Computed)
  delete_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  namespace_labels = ['map', 'string'] (Optional)
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
