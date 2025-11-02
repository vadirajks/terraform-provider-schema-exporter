data "aws_ec2_spot_price" "name" {
  availability_zone = string (Optional)
  id = string (Optional, Computed)
  instance_type = string (Optional)
  region = string (Optional, Computed)
  spot_price = string (Computed)
  spot_price_timestamp = string (Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
