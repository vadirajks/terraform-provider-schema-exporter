resource "google_apigee_instance" "name" {
  location = string (Required)
  name = string (Required)
  org_id = string (Required)
  consumer_accept_list = ['list', 'string'] (Optional, Computed)
  description = string (Optional)
  disk_encryption_key_name = string (Optional)
  display_name = string (Optional)
  host = string (Computed)
  id = string (Optional, Computed)
  ip_range = string (Optional)
  peering_cidr_range = string (Optional, Computed)
  port = string (Computed)
  service_attachment = string (Computed)

  access_logging_config block "list" (Optional) {
    enabled = bool (Required)
    filter = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
