resource "aws_db_proxy_endpoint" "name" {
  db_proxy_endpoint_name = string (Required)
  db_proxy_name = string (Required)
  vpc_subnet_ids = ['set', 'string'] (Required)
  arn = string (Computed)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  is_default = bool (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  target_role = string (Optional)
  vpc_id = string (Computed)
  vpc_security_group_ids = ['set', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
