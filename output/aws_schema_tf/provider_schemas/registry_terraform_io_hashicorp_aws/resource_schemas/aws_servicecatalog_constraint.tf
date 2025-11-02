resource "aws_servicecatalog_constraint" "name" {
  parameters = string (Required)
  portfolio_id = string (Required)
  product_id = string (Required)
  type = string (Required)
  accept_language = string (Optional)
  description = string (Optional, Computed)
  id = string (Optional, Computed)
  owner = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
