resource "google_network_security_gateway_security_policy" "name" {
  name = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  location = string (Optional)
  project = string (Optional, Computed)
  self_link = string (Computed)
  tls_inspection_policy = string (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
