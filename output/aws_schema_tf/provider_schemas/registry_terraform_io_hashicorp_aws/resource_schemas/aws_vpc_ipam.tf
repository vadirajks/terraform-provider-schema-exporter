resource "aws_vpc_ipam" "name" {
  arn = string (Computed)
  cascade = bool (Optional)
  default_resource_discovery_association_id = string (Computed)
  default_resource_discovery_id = string (Computed)
  description = string (Optional)
  enable_private_gua = bool (Optional)
  id = string (Optional, Computed)
  metered_account = string (Optional, Computed)
  private_default_scope_id = string (Computed)
  public_default_scope_id = string (Computed)
  region = string (Optional, Computed)
  scope_count = number (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  tier = string (Optional)

  operating_regions block "set" (Required) {
    region_name = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
