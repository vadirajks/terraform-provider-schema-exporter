resource "google_cloudbuild_bitbucket_server_config" "name" {
  api_key = string (Required)
  config_id = string (Required)
  host_uri = string (Required)
  location = string (Required)
  username = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  peered_network = string (Optional)
  project = string (Optional, Computed)
  ssl_ca = string (Optional)
  webhook_key = string (Computed)

  connected_repositories block "set" (Optional) {
    project_key = string (Required)
    repo_slug = string (Required)
  }

  secrets block "list" (Required) {
    admin_access_token_version_name = string (Required)
    read_access_token_version_name = string (Required)
    webhook_secret_version_name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
