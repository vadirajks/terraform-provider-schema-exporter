resource "google_monitoring_notification_channel" "name" {
  type = string (Required)
  description = string (Optional)
  display_name = string (Optional)
  enabled = bool (Optional)
  force_delete = bool (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  user_labels = ['map', 'string'] (Optional)
  verification_status = string (Computed)

  sensitive_labels block "list" (Optional) {
    auth_token = string (Optional)
    password = string (Optional)
    service_key = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
