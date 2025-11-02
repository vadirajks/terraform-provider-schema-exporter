resource "aws_kinesisanalyticsv2_application_snapshot" "name" {
  application_name = string (Required)
  snapshot_name = string (Required)
  application_version_id = number (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  snapshot_creation_timestamp = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
