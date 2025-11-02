resource "aws_controltower_landing_zone" "name" {
  manifest_json = string (Required)
  version = string (Required)
  arn = string (Computed)
  drift_status = ['list', ['object', {'status': 'string'}]] (Computed)
  id = string (Optional, Computed)
  latest_available_version = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
