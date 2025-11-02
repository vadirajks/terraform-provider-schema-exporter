resource "aws_servicecatalog_tag_option_resource_association" "name" {
  resource_id = string (Required)
  tag_option_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_arn = string (Computed)
  resource_created_time = string (Computed)
  resource_description = string (Computed)
  resource_name = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
