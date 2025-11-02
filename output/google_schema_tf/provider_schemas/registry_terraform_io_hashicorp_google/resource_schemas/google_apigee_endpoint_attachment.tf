resource "google_apigee_endpoint_attachment" "name" {
  endpoint_attachment_id = string (Required)
  location = string (Required)
  org_id = string (Required)
  service_attachment = string (Required)
  connection_state = string (Computed)
  host = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
