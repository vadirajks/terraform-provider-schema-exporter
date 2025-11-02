resource "aws_route53_hosted_zone_dnssec" "name" {
  hosted_zone_id = string (Required)
  id = string (Optional, Computed)
  signing_status = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
