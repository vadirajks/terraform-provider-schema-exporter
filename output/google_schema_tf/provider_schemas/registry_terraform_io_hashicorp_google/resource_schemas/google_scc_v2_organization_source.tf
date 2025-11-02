resource "google_scc_v2_organization_source" "name" {
  display_name = string (Required)
  organization = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
