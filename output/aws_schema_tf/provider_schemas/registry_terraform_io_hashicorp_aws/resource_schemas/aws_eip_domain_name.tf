resource "aws_eip_domain_name" "name" {
  allocation_id = string (Required)
  domain_name = string (Required)
  id = string (Computed)
  ptr_record = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
