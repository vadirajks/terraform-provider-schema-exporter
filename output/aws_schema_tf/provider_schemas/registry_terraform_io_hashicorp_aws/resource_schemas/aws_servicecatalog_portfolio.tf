resource "aws_servicecatalog_portfolio" "name" {
  name = string (Required)
  provider_name = string (Required)
  arn = string (Computed)
  created_time = string (Computed)
  description = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
