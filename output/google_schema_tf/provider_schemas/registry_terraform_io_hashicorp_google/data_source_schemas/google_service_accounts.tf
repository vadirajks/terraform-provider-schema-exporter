data "google_service_accounts" "name" {
  accounts = ['list', ['object', {'account_id': 'string', 'disabled': 'bool', 'display_name': 'string', 'email': 'string', 'member': 'string', 'name': 'string', 'unique_id': 'string'}]] (Computed)
  id = string (Optional, Computed)
  prefix = string (Optional)
  project = string (Optional)
  regex = string (Optional)
}
