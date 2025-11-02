resource "aws_route53profiles_association" "name" {
  name = string (Required)
  profile_id = string (Required)
  resource_id = string (Required)
  arn = string (Computed)
  id = string (Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  status_message = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
