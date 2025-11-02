resource "aws_network_interface_permission" "name" {
  aws_account_id = string (Required)
  network_interface_id = string (Required)
  permission = string (Required)
  network_interface_permission_id = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
