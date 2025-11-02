data "aws_opensearchserverless_vpc_endpoint" "name" {
  vpc_endpoint_id = string (Required)
  created_date = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  security_group_ids = ['list', 'string'] (Computed)
  subnet_ids = ['list', 'string'] (Computed)
  vpc_id = string (Computed)
}
