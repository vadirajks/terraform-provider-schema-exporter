resource "aws_datasync_agent" "name" {
  activation_key = string (Optional, Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  ip_address = string (Optional, Computed)
  name = string (Optional)
  private_link_endpoint = string (Optional, Computed)
  region = string (Optional, Computed)
  security_group_arns = ['set', 'string'] (Optional)
  subnet_arns = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_endpoint_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
