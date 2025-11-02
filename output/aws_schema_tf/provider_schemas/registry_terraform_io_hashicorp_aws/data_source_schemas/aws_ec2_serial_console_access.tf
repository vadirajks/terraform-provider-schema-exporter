data "aws_ec2_serial_console_access" "name" {
  enabled = bool (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
