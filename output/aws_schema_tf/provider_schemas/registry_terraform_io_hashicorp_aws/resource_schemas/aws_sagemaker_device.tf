resource "aws_sagemaker_device" "name" {
  device_fleet_name = string (Required)
  agent_version = string (Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  device block "list" (Required) {
    device_name = string (Required)
    description = string (Optional)
    iot_thing_name = string (Optional)
  }
}
