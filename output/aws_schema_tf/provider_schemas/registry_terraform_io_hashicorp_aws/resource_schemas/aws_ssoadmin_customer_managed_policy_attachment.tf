resource "aws_ssoadmin_customer_managed_policy_attachment" "name" {
  instance_arn = string (Required)
  permission_set_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  customer_managed_policy_reference block "list" (Required) {
    name = string (Required)
    path = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
