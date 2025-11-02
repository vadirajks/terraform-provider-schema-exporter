resource "aws_apprunner_vpc_connector" "name" {
  security_groups = ['set', 'string'] (Required)
  subnets = ['set', 'string'] (Required)
  vpc_connector_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_connector_revision = number (Computed)
}
