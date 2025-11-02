data "google_monitoring_notification_channel" "name" {
  description = string (Computed)
  display_name = string (Optional)
  enabled = bool (Computed)
  force_delete = bool (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional)
  sensitive_labels = ['list', ['object', {'auth_token': 'string', 'password': 'string', 'service_key': 'string'}]] (Computed)
  type = string (Optional)
  user_labels = ['map', 'string'] (Optional)
  verification_status = string (Computed)
}
