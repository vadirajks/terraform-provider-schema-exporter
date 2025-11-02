resource "google_firebase_app_hosting_domain" "name" {
  backend = string (Required)
  domain_id = string (Required)
  location = string (Required)
  create_time = string (Computed)
  custom_domain_status = ['list', ['object', {'cert_state': 'string', 'host_state': 'string', 'issues': ['list', ['object', {'code': 'number', 'details': 'string', 'message': 'string'}]], 'ownership_state': 'string', 'required_dns_updates': ['list', ['object', {'check_time': 'string', 'desired': ['list', ['object', {'check_error': ['list', ['object', {'code': 'number', 'details': 'string', 'message': 'string'}]], 'domain_name': 'string', 'records': ['list', ['object', {'domain_name': 'string', 'rdata': 'string', 'relevant_state': ['list', 'string'], 'required_action': 'string', 'type': 'string'}]]}]], 'discovered': ['list', ['object', {'check_error': ['list', ['object', {'code': 'number', 'details': 'string', 'message': 'string'}]], 'domain_name': 'string', 'records': ['list', ['object', {'domain_name': 'string', 'rdata': 'string', 'relevant_state': ['list', 'string'], 'required_action': 'string', 'type': 'string'}]]}]], 'domain_name': 'string'}]]}]] (Computed)
  delete_time = string (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  purge_time = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  serve block "list" (Optional) {

    redirect block "list" (Optional) {
      uri = string (Required)
      status = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
