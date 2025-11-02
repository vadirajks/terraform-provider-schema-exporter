resource "google_monitoring_metric_descriptor" "name" {
  metric_kind = string (Required)
  type = string (Required)
  value_type = string (Required)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  launch_stage = string (Optional)
  monitored_resource_types = ['set', 'string'] (Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  unit = string (Optional)

  labels block "set" (Optional) {
    key = string (Required)
    description = string (Optional)
    value_type = string (Optional)
  }

  metadata block "list" (Optional) {
    ingest_delay = string (Optional)
    sample_period = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
