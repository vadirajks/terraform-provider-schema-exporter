resource "google_compute_node_template" "name" {
  name = string (Required)
  cpu_overcommit_type = string (Optional)
  creation_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  node_affinity_labels = ['map', 'string'] (Optional)
  node_type = string (Optional)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)

  accelerators block "list" (Optional) {
    accelerator_count = number (Optional)
    accelerator_type = string (Optional)
  }

  disks block "list" (Optional) {
    disk_count = number (Optional)
    disk_size_gb = number (Optional)
    disk_type = string (Optional)
  }

  node_type_flexibility block "list" (Optional) {
    cpus = string (Optional)
    local_ssd = string (Computed)
    memory = string (Optional)
  }

  server_binding block "list" (Optional) {
    type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
