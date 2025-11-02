resource "aws_vpc_endpoint_subnet_association" "name" {
  subnet_id = string (Required)
  vpc_endpoint_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
