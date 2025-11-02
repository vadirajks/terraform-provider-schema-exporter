resource "google_apigee_developer_app" "name" {
  callback_url = string (Required)
  developer_email = string (Required)
  name = string (Required)
  org_id = string (Required)
  api_products = ['set', 'string'] (Optional)
  app_family = string (Optional, Computed)
  app_id = string (Computed)
  created_at = string (Computed)
  credentials = ['list', ['object', {'api_products': ['list', ['object', {'apiproduct': 'string', 'status': 'string'}]], 'attributes': ['list', ['object', {'name': 'string', 'value': 'string'}]], 'consumer_key': 'string', 'consumer_secret': 'string', 'expires_at': 'string', 'issued_at': 'string', 'scopes': ['list', 'string'], 'status': 'string'}]] (Computed)
  developer_id = string (Computed)
  id = string (Optional, Computed)
  key_expires_in = string (Optional)
  last_modified_at = string (Computed)
  scopes = ['set', 'string'] (Optional)
  status = string (Optional, Computed)

  attributes block "list" (Optional) {
    name = string (Optional)
    value = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
