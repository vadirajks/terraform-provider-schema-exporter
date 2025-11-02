resource "aws_networkmanager_customer_gateway_association" "name" {
  customer_gateway_arn = string (Required)
  device_id = string (Required)
  global_network_id = string (Required)
  id = string (Optional, Computed)
  link_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
