resource "aws_network_interface_attachment" "name" {
  device_index = number (Required)
  instance_id = string (Required)
  network_interface_id = string (Required)
  attachment_id = string (Computed)
  id = string (Optional, Computed)
  network_card_index = number (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
}
