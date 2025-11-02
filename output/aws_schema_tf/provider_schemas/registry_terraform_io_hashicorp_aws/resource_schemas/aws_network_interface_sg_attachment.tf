resource "aws_network_interface_sg_attachment" "name" {
  network_interface_id = string (Required)
  security_group_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
