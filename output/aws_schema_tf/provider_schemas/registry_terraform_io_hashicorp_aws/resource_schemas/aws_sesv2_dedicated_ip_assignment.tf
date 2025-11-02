resource "aws_sesv2_dedicated_ip_assignment" "name" {
  destination_pool_name = string (Required)
  ip = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
