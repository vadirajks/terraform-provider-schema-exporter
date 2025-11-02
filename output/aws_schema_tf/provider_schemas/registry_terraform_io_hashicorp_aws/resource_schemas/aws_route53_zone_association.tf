resource "aws_route53_zone_association" "name" {
  vpc_id = string (Required)
  zone_id = string (Required)
  id = string (Optional, Computed)
  owning_account = string (Computed)
  vpc_region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
