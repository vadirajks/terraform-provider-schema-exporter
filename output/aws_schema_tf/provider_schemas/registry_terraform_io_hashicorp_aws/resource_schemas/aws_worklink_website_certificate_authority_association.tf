resource "aws_worklink_website_certificate_authority_association" "name" {
  certificate = string (Required)
  fleet_arn = string (Required)
  display_name = string (Optional)
  id = string (Optional, Computed)
  website_ca_id = string (Computed)
}
