data "google_container_attached_install_manifest" "name" {
  cluster_id = string (Required)
  location = string (Required)
  platform_version = string (Required)
  project = string (Required)
  id = string (Optional, Computed)
  manifest = string (Computed)
}
