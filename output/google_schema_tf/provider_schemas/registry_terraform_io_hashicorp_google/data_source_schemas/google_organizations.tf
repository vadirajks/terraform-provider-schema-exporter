data "google_organizations" "name" {
  filter = string (Optional)
  id = string (Optional, Computed)
  organizations = ['list', ['object', {'directory_customer_id': 'string', 'display_name': 'string', 'lifecycle_state': 'string', 'name': 'string', 'org_id': 'string'}]] (Computed)
}
