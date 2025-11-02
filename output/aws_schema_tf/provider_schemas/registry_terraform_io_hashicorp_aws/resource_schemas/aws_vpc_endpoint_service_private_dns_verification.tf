resource "aws_vpc_endpoint_service_private_dns_verification" "name" {
  service_id = string (Required)
  region = string (Optional, Computed)
  wait_for_verification = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
