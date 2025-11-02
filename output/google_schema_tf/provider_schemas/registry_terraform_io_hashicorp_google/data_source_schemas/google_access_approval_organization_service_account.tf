data "google_access_approval_organization_service_account" "name" {
  organization_id = string (Required)
  account_email = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
}
