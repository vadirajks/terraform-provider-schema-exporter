resource "google_storage_notification" "name" {
  bucket = string (Required)
  payload_format = string (Required)
  topic = string (Required)
  custom_attributes = ['map', 'string'] (Optional)
  event_types = ['set', 'string'] (Optional)
  id = string (Computed)
  notification_id = string (Computed)
  object_name_prefix = string (Optional)
  self_link = string (Computed)
}
