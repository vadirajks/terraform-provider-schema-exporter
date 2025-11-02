resource "google_cloudbuild_worker_pool" "name" {
  location = string (Required)
  name = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  delete_time = string (Computed)
  display_name = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  network_config block "list" (Optional) {
    peered_network = string (Required)
    peered_network_ip_range = string (Optional)
  }

  private_service_connect block "list" (Optional) {
    network_attachment = string (Required)
    route_all_traffic = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  worker_config block "list" (Optional) {
    disk_size_gb = number (Optional)
    enable_nested_virtualization = bool (Optional)
    machine_type = string (Optional)
    no_external_ip = bool (Optional, Computed)
  }
}
