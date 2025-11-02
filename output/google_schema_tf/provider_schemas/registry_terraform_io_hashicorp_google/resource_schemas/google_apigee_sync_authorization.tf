resource "google_apigee_sync_authorization" "name" {
  identities = ['list', 'string'] (Required)
  name = string (Required)
  etag = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
