resource "aws_vpc_ipam_pool_cidr" "name" {
  ipam_pool_id = string (Required)
  cidr = string (Optional, Computed)
  id = string (Optional, Computed)
  ipam_pool_cidr_id = string (Computed)
  netmask_length = number (Optional, Computed)
  region = string (Optional, Computed)

  cidr_authorization_context block "list" (Optional) {
    message = string (Optional)
    signature = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
