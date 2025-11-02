data "aws_iot_endpoint" "name" {
  endpoint_address = string (Computed)
  endpoint_type = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
