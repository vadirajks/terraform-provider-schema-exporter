resource "google_compute_region_network_endpoint_group" "name" {
  name = string (Required)
  region = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  network = string (Optional, Computed)
  network_endpoint_type = string (Optional)
  project = string (Optional, Computed)
  psc_target_service = string (Optional)
  self_link = string (Computed)
  subnetwork = string (Optional)

  app_engine block "list" (Optional) {
    service = string (Optional)
    url_mask = string (Optional)
    version = string (Optional)
  }

  cloud_function block "list" (Optional) {
    function = string (Optional)
    url_mask = string (Optional)
  }

  cloud_run block "list" (Optional) {
    service = string (Optional)
    tag = string (Optional)
    url_mask = string (Optional)
  }

  psc_data block "list" (Optional) {
    producer_port = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
