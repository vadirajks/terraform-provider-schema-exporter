resource "aws_vpclattice_service_network_vpc_association" "name" {
  service_network_identifier = string (Required)
  vpc_identifier = string (Required)
  arn = string (Computed)
  created_by = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  security_group_ids = ['list', 'string'] (Optional)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
