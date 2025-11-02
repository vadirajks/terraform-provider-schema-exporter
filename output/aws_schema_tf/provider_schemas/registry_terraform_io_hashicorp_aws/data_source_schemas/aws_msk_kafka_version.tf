data "aws_msk_kafka_version" "name" {
  id = string (Optional, Computed)
  preferred_versions = ['list', 'string'] (Optional)
  region = string (Optional, Computed)
  status = string (Computed)
  version = string (Optional, Computed)
}
