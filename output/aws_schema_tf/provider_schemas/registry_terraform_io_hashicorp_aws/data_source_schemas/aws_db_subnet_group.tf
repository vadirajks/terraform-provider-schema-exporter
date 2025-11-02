data "aws_db_subnet_group" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  subnet_ids = ['set', 'string'] (Computed)
  supported_network_types = ['set', 'string'] (Computed)
  vpc_id = string (Computed)
}
