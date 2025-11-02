resource "aws_ec2_subnet_cidr_reservation" "name" {
  cidr_block = string (Required)
  reservation_type = string (Required)
  subnet_id = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
}
