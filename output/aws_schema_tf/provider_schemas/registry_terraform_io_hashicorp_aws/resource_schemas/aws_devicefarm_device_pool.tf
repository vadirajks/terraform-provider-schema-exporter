resource "aws_devicefarm_device_pool" "name" {
  name = string (Required)
  project_arn = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  max_devices = number (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Computed)

  rule block "set" (Required) {
    attribute = string (Optional)
    operator = string (Optional)
    value = string (Optional)
  }
}
