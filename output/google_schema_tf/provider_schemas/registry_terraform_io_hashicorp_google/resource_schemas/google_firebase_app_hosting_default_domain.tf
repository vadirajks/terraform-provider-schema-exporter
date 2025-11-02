resource "google_firebase_app_hosting_default_domain" "name" {
  backend = string (Required)
  domain_id = string (Required)
  location = string (Required)
  create_time = string (Computed)
  disabled = bool (Optional, Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  uid = string (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
