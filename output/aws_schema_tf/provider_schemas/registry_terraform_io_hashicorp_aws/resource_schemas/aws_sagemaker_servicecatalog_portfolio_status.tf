resource "aws_sagemaker_servicecatalog_portfolio_status" "name" {
  status = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
