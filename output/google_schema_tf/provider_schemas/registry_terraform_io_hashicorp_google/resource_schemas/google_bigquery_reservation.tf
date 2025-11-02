resource "google_bigquery_reservation" "name" {
  name = string (Required)
  slot_capacity = number (Required)
  concurrency = number (Optional)
  edition = string (Optional, Computed)
  id = string (Optional, Computed)
  ignore_idle_slots = bool (Optional)
  location = string (Optional)
  original_primary_location = string (Computed)
  primary_location = string (Computed)
  project = string (Optional, Computed)
  replication_status = ['list', ['object', {'error': ['list', ['object', {'code': 'number', 'message': 'string'}]], 'last_error_time': 'string', 'last_replication_time': 'string'}]] (Computed)
  secondary_location = string (Optional)

  autoscale block "list" (Optional) {
    current_slots = number (Computed)
    max_slots = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
