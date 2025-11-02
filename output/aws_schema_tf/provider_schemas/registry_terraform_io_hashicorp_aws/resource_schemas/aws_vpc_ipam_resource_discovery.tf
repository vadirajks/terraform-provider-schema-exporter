resource "aws_vpc_ipam_resource_discovery" "name" {
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  ipam_resource_discovery_region = string (Computed)
  is_default = bool (Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  operating_regions block "set" (Required) {
    region_name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
