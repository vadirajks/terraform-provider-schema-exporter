data "aws_servicecatalog_constraint" "name" {
  id = string (Required)
  accept_language = string (Optional)
  description = string (Optional, Computed)
  owner = string (Computed)
  parameters = string (Computed)
  portfolio_id = string (Computed)
  product_id = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  type = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
