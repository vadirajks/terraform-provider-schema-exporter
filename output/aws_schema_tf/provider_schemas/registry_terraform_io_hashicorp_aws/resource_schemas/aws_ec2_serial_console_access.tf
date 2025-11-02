resource "aws_ec2_serial_console_access" "name" {
  enabled = bool (Optional)
  id = string (Optional, Computed)
}
