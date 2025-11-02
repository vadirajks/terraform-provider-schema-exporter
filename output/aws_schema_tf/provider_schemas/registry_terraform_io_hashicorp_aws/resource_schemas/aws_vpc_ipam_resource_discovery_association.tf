resource "aws_vpc_ipam_resource_discovery_association" "name" {
  ipam_id = string (Required)
  ipam_resource_discovery_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  ipam_arn = string (Computed)
  ipam_region = string (Computed)
  is_default = bool (Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
