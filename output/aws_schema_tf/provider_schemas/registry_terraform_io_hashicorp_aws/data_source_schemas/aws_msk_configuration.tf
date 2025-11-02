data "aws_msk_configuration" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  kafka_versions = ['set', 'string'] (Computed)
  latest_revision = number (Computed)
  region = string (Optional, Computed)
  server_properties = string (Computed)
}
