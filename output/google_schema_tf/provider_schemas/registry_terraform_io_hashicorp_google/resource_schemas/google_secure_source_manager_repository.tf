resource "google_secure_source_manager_repository" "name" {
  instance = string (Required)
  location = string (Required)
  repository_id = string (Required)
  create_time = string (Computed)
  deletion_policy = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  uid = string (Computed)
  update_time = string (Computed)
  uris = ['list', ['object', {'api': 'string', 'git_https': 'string', 'html': 'string'}]] (Computed)

  initial_config block "list" (Optional) {
    default_branch = string (Optional)
    gitignores = ['list', 'string'] (Optional)
    license = string (Optional)
    readme = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
