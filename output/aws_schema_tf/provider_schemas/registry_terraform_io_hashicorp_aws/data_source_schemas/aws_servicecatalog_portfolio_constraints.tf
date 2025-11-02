data "aws_servicecatalog_portfolio_constraints" "name" {
  portfolio_id = string (Required)
  accept_language = string (Optional)
  details = ['list', ['object', {'constraint_id': 'string', 'description': 'string', 'owner': 'string', 'portfolio_id': 'string', 'product_id': 'string', 'type': 'string'}]] (Computed)
  id = string (Optional, Computed)
  product_id = string (Optional)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
