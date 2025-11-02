data "aws_connect_contact_flow" "name" {
  instance_id = string (Required)
  arn = string (Computed)
  contact_flow_id = string (Optional, Computed)
  content = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
  type = string (Optional)
}
