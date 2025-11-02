resource "aws_connect_phone_number_contact_flow_association" "name" {
  contact_flow_id = string (Required)
  instance_id = string (Required)
  phone_number_id = string (Required)
  region = string (Optional, Computed)
}
