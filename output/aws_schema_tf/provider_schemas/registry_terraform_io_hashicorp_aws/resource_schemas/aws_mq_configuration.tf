resource "aws_mq_configuration" "name" {
  data = string (Required)
  engine_type = string (Required)
  engine_version = string (Required)
  name = string (Required)
  arn = string (Computed)
  authentication_strategy = string (Optional, Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  latest_revision = number (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
