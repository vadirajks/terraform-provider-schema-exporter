resource "aws_vpc_security_group_vpc_association" "name" {
  security_group_id = string (Required)
  vpc_id = string (Required)
  region = string (Optional, Computed)
  state = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
