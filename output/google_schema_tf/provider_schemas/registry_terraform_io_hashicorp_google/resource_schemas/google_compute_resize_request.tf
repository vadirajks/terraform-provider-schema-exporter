resource "google_compute_resize_request" "name" {
  instance_group_manager = string (Required)
  name = string (Required)
  resize_by = number (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  status = ['list', ['object', {'error': ['list', ['object', {'errors': ['list', ['object', {'code': 'string', 'error_details': ['list', ['object', {'error_info': ['list', ['object', {'domain': 'string', 'metadatas': ['map', 'string'], 'reason': 'string'}]], 'help': ['list', ['object', {'links': ['list', ['object', {'description': 'string', 'url': 'string'}]]}]], 'localized_message': ['list', ['object', {'locale': 'string', 'message': 'string'}]], 'quota_info': ['list', ['object', {'dimensions': ['map', 'string'], 'future_limit': 'number', 'limit': 'number', 'limit_name': 'string', 'metric_name': 'string', 'rollout_status': 'string'}]]}]], 'location': 'string', 'message': 'string'}]]}]], 'last_attempt': ['list', ['object', {'error': ['list', ['object', {'errors': ['list', ['object', {'code': 'string', 'error_details': ['list', ['object', {'error_info': ['list', ['object', {'domain': 'string', 'metadatas': ['map', 'string'], 'reason': 'string'}]], 'help': ['list', ['object', {'links': ['list', ['object', {'description': 'string', 'url': 'string'}]]}]], 'localized_message': ['list', ['object', {'locale': 'string', 'message': 'string'}]], 'quota_info': ['list', ['object', {'dimensions': ['map', 'string'], 'future_limit': 'number', 'limit': 'number', 'limit_name': 'string', 'metric_name': 'string', 'rollout_status': 'string'}]]}]], 'location': 'string', 'message': 'string'}]]}]]}]]}]] (Computed)
  zone = string (Optional, Computed)

  requested_run_duration block "list" (Optional) {
    seconds = string (Required)
    nanos = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
