resource "aws_sagemaker_device_fleet" "name" {
  device_fleet_name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  description = string (Optional)
  enable_iot_role_alias = bool (Optional)
  id = string (Optional, Computed)
  iot_role_alias = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  output_config block "list" (Required) {
    s3_output_location = string (Required)
    kms_key_id = string (Optional)
  }
}
