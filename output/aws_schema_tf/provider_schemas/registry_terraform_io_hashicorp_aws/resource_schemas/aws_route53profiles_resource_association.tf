resource "aws_route53profiles_resource_association" "name" {
  name = string (Required)
  profile_id = string (Required)
  resource_arn = string (Required)
  id = string (Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  resource_properties = string (Optional, Computed)
  resource_type = string (Computed)
  status = string (Computed)
  status_message = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
