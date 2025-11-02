resource "aws_directory_service_conditional_forwarder" "name" {
  directory_id = string (Required)
  dns_ips = ['list', 'string'] (Required)
  remote_domain_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
