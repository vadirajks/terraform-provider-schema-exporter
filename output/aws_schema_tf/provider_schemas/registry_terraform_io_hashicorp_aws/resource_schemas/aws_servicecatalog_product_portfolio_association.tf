resource "aws_servicecatalog_product_portfolio_association" "name" {
  portfolio_id = string (Required)
  product_id = string (Required)
  accept_language = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  source_portfolio_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
