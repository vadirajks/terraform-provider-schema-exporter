resource "aws_bedrock_provisioned_model_throughput" "name" {
  model_arn = string (Required)
  model_units = number (Required)
  provisioned_model_name = string (Required)
  commitment_duration = string (Optional)
  id = string (Computed)
  provisioned_model_arn = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
