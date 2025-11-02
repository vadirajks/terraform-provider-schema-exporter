resource "google_compute_node_group" "name" {
  name = string (Required)
  node_template = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  initial_size = number (Optional)
  maintenance_policy = string (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  size = number (Computed)
  zone = string (Optional, Computed)

  autoscaling_policy block "list" (Optional) {
    max_nodes = number (Optional, Computed)
    min_nodes = number (Optional, Computed)
    mode = string (Optional, Computed)
  }

  maintenance_window block "list" (Optional) {
    start_time = string (Required)
  }

  share_settings block "list" (Optional) {
    share_type = string (Required)

    project_map block "set" (Optional) {
      id = string (Required)
      project_id = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
