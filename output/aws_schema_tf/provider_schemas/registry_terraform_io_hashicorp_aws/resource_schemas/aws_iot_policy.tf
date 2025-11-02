resource "aws_iot_policy" "name" {
  name = string (Required)
  policy = string (Required)
  arn = string (Computed)
  default_version_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    delete = string (Optional)
    update = string (Optional)
  }
}
