resource "aws_inspector2_organization_configuration" "name" {
  id = string (Optional, Computed)
  max_account_limit_reached = bool (Computed)
  region = string (Optional, Computed)

  auto_enable block "list" (Required) {
    ec2 = bool (Required)
    ecr = bool (Required)
    code_repository = bool (Optional)
    lambda = bool (Optional)
    lambda_code = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
