resource "aws_directory_service_directory" "name" {
  name = string (Required)
  password = string (Required)
  access_url = string (Computed)
  alias = string (Optional, Computed)
  description = string (Optional)
  desired_number_of_domain_controllers = number (Optional, Computed)
  dns_ip_addresses = ['set', 'string'] (Computed)
  edition = string (Optional, Computed)
  enable_sso = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  security_group_id = string (Computed)
  short_name = string (Optional, Computed)
  size = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Optional)

  connect_settings block "list" (Optional) {
    customer_dns_ips = ['set', 'string'] (Required)
    customer_username = string (Required)
    subnet_ids = ['set', 'string'] (Required)
    vpc_id = string (Required)
    availability_zones = ['set', 'string'] (Computed)
    connect_ips = ['set', 'string'] (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_settings block "list" (Optional) {
    subnet_ids = ['set', 'string'] (Required)
    vpc_id = string (Required)
    availability_zones = ['set', 'string'] (Computed)
  }
}
