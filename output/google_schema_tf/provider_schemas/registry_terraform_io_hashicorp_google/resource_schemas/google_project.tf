resource "google_project" "name" {
  name = string (Required)
  project_id = string (Required)
  auto_create_network = bool (Optional)
  billing_account = string (Optional)
  deletion_policy = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  folder_id = string (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  number = string (Computed)
  org_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
