data "google_gke_hub_membership" "name" {
  location = string (Required)
  membership_id = string (Required)
  authority = ['list', ['object', {'issuer': 'string'}]] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  endpoint = ['list', ['object', {'gke_cluster': ['list', ['object', {'resource_link': 'string'}]]}]] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Computed)
  name = string (Computed)
  project = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
}
