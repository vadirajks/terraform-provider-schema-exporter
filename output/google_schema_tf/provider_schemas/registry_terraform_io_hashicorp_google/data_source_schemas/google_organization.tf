data "google_organization" "name" {
  create_time = string (Computed)
  directory_customer_id = string (Computed)
  domain = string (Optional, Computed)
  id = string (Optional, Computed)
  lifecycle_state = string (Computed)
  name = string (Computed)
  org_id = string (Computed)
  organization = string (Optional)
}
