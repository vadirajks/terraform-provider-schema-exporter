resource "aws_vpc_endpoint_policy" "name" {
  vpc_endpoint_id = string (Required)
  id = string (Optional, Computed)
  policy = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
