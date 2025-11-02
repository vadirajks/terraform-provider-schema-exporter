resource "google_healthcare_workspace" "name" {
  dataset = string (Required)
  name = string (Required)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  settings block "list" (Required) {
    data_project_ids = ['list', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
