resource "aws_vpc_ipam_scope" "name" {
  ipam_id = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  ipam_arn = string (Computed)
  ipam_scope_type = string (Computed)
  is_default = bool (Computed)
  pool_count = number (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
