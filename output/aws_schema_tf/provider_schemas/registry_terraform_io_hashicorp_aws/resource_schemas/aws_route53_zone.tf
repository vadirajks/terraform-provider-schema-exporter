resource "aws_route53_zone" "name" {
  name = string (Required)
  arn = string (Computed)
  comment = string (Optional)
  delegation_set_id = string (Optional)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  name_servers = ['list', 'string'] (Computed)
  primary_name_server = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  zone_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc block "set" (Optional) {
    vpc_id = string (Required)
    vpc_region = string (Optional, Computed)
  }
}
