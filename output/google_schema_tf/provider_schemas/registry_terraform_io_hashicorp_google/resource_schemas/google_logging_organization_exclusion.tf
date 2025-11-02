resource "google_logging_organization_exclusion" "name" {
  filter = string (Required)
  name = string (Required)
  org_id = string (Required)
  description = string (Optional)
  disabled = bool (Optional)
  id = string (Optional, Computed)
}
