data "aws_servicecatalog_portfolio" "name" {
  id = string (Required)
  accept_language = string (Optional)
  arn = string (Computed)
  created_time = string (Computed)
  description = string (Computed)
  name = string (Computed)
  provider_name = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
