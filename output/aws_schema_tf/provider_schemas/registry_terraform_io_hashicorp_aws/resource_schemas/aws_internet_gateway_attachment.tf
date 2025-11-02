resource "aws_internet_gateway_attachment" "name" {
  internet_gateway_id = string (Required)
  vpc_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
