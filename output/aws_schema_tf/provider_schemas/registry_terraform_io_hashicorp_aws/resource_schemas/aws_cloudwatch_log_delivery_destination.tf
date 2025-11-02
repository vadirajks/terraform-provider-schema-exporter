resource "aws_cloudwatch_log_delivery_destination" "name" {
  name = string (Required)
  arn = string (Computed)
  delivery_destination_type = string (Computed)
  output_format = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  delivery_destination_configuration block "list" (Optional) {
    destination_resource_arn = string (Required)
  }
}
