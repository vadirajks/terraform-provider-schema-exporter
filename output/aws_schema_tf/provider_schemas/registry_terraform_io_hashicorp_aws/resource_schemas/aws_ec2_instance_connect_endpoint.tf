resource "aws_ec2_instance_connect_endpoint" "name" {
  subnet_id = string (Required)
  arn = string (Computed)
  availability_zone = string (Computed)
  dns_name = string (Computed)
  fips_dns_name = string (Computed)
  id = string (Computed)
  network_interface_ids = ['list', 'string'] (Computed)
  owner_id = string (Computed)
  preserve_client_ip = bool (Optional, Computed)
  region = string (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  vpc_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
