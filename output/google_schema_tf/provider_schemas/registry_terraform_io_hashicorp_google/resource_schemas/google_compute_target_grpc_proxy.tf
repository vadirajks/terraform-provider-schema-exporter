resource "google_compute_target_grpc_proxy" "name" {
  name = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  self_link = string (Computed)
  self_link_with_id = string (Computed)
  url_map = string (Optional)
  validate_for_proxyless = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
