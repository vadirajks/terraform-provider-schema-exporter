resource "aws_ssoadmin_permissions_boundary_attachment" "name" {
  instance_arn = string (Required)
  permission_set_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  permissions_boundary block "list" (Required) {
    managed_policy_arn = string (Optional)

    customer_managed_policy_reference block "list" (Optional) {
      name = string (Required)
      path = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
