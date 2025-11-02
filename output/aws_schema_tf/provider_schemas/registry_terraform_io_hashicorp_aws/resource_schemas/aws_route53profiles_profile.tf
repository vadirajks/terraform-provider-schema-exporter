resource "aws_route53profiles_profile" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  share_status = string (Computed)
  status = string (Computed)
  status_message = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
