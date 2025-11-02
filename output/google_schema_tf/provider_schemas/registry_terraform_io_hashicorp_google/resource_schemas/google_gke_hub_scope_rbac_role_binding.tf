resource "google_gke_hub_scope_rbac_role_binding" "name" {
  scope_id = string (Required)
  scope_rbac_role_binding_id = string (Required)
  create_time = string (Computed)
  delete_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  group = string (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = ['list', ['object', {'code': 'string'}]] (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)
  user = string (Optional)

  role block "list" (Required) {
    custom_role = string (Optional)
    predefined_role = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
