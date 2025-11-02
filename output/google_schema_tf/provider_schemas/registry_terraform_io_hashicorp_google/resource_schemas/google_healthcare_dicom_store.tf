resource "google_healthcare_dicom_store" "name" {
  dataset = string (Required)
  name = string (Required)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  self_link = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  notification_config block "list" (Optional) {
    pubsub_topic = string (Required)
    send_for_bulk_import = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
