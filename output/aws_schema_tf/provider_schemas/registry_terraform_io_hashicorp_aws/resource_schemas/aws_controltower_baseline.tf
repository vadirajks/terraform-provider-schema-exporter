resource "aws_controltower_baseline" "name" {
  baseline_identifier = string (Required)
  baseline_version = string (Required)
  target_identifier = string (Required)
  arn = string (Computed)
  operation_identifier = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  parameters block "list" (Optional) {
    key = string (Required)
    value = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
