resource "aws_resourcegroups_resource" "name" {
  group_arn = string (Required)
  resource_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_type = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
