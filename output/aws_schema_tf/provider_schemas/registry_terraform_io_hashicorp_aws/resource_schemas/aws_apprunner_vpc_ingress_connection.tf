resource "aws_apprunner_vpc_ingress_connection" "name" {
  name = string (Required)
  service_arn = string (Required)
  arn = string (Computed)
  domain_name = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  ingress_vpc_configuration block "list" (Required) {
    vpc_endpoint_id = string (Optional)
    vpc_id = string (Optional)
  }
}
