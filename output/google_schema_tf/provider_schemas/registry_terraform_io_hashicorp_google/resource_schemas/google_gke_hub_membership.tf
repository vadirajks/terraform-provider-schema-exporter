resource "google_gke_hub_membership" "name" {
  membership_id = string (Required)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  authority block "list" (Optional) {
    issuer = string (Required)
  }

  endpoint block "list" (Optional) {

    gke_cluster block "list" (Optional) {
      resource_link = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
