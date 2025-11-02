resource "aws_quicksight_vpc_connection" "name" {
  name = string (Required)
  role_arn = string (Required)
  security_group_ids = ['set', 'string'] (Required)
  subnet_ids = ['set', 'string'] (Required)
  vpc_connection_id = string (Required)
  arn = string (Computed)
  availability_status = string (Computed)
  aws_account_id = string (Optional, Computed)
  dns_resolvers = ['set', 'string'] (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
