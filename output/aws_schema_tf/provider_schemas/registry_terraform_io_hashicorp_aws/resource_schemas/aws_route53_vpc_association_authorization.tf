resource "aws_route53_vpc_association_authorization" "name" {
  vpc_id = string (Required)
  zone_id = string (Required)
  id = string (Optional, Computed)
  vpc_region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
