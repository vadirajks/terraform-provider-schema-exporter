resource "google_iap_brand" "name" {
  application_title = string (Required)
  support_email = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  org_internal_only = bool (Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
