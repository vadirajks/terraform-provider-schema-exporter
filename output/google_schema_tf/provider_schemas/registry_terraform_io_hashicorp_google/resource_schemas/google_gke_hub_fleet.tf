resource "google_gke_hub_fleet" "name" {
  create_time = string (Computed)
  delete_time = string (Computed)
  display_name = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  state = ['list', ['object', {'code': 'string'}]] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  default_cluster_config block "list" (Optional) {

    binary_authorization_config block "list" (Optional) {
      evaluation_mode = string (Optional)

      policy_bindings block "list" (Optional) {
        name = string (Optional)
      }
    }

    security_posture_config block "list" (Optional) {
      mode = string (Optional)
      vulnerability_mode = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
