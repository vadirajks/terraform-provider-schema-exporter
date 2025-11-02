resource "aws_servicecatalog_budget_resource_association" "name" {
  budget_name = string (Required)
  resource_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
