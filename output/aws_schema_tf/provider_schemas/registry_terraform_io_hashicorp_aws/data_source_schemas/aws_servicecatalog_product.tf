data "aws_servicecatalog_product" "name" {
  id = string (Required)
  accept_language = string (Optional)
  arn = string (Computed)
  created_time = string (Computed)
  description = string (Computed)
  distributor = string (Computed)
  has_default_path = bool (Computed)
  name = string (Computed)
  owner = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  support_description = string (Computed)
  support_email = string (Computed)
  support_url = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  type = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
