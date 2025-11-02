resource "aws_msk_configuration" "name" {
  name = string (Required)
  server_properties = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  kafka_versions = ['set', 'string'] (Optional)
  latest_revision = number (Computed)
  region = string (Optional, Computed)
}
