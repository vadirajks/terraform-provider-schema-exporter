data "google_container_engine_versions" "name" {
  default_cluster_version = string (Computed)
  id = string (Optional, Computed)
  latest_master_version = string (Computed)
  latest_node_version = string (Computed)
  location = string (Optional)
  project = string (Optional)
  release_channel_default_version = ['map', 'string'] (Computed)
  release_channel_latest_version = ['map', 'string'] (Computed)
  release_channel_upgrade_target_version = ['map', 'string'] (Computed)
  valid_master_versions = ['list', 'string'] (Computed)
  valid_node_versions = ['list', 'string'] (Computed)
  version_prefix = string (Optional)
}
