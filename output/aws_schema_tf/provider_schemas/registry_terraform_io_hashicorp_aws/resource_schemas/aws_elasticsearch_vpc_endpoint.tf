resource "aws_elasticsearch_vpc_endpoint" "name" {
  domain_arn = string (Required)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_options block "list" (Required) {
    subnet_ids = ['set', 'string'] (Required)
    availability_zones = ['set', 'string'] (Computed)
    security_group_ids = ['set', 'string'] (Optional, Computed)
    vpc_id = string (Computed)
  }
}
