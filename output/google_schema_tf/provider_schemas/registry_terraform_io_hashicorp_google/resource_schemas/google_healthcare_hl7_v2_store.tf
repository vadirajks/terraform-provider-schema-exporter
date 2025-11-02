resource "google_healthcare_hl7_v2_store" "name" {
  dataset = string (Required)
  name = string (Required)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  reject_duplicate_message = bool (Optional)
  self_link = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  notification_config block "list" (Optional) {
    pubsub_topic = string (Required)
  }

  notification_configs block "list" (Optional) {
    pubsub_topic = string (Required)
    filter = string (Optional)
  }

  parser_config block "list" (Optional) {
    allow_null_header = bool (Optional)
    schema = string (Optional)
    segment_terminator = string (Optional)
    version = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
