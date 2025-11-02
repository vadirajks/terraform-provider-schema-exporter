data "google_billing_account" "name" {
  billing_account = string (Optional)
  currency_code = string (Computed)
  display_name = string (Optional, Computed)
  id = string (Optional, Computed)
  lookup_projects = bool (Optional)
  name = string (Computed)
  open = bool (Optional, Computed)
  project_ids = ['set', 'string'] (Computed)
}
