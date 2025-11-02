data "aws_connect_contact_flow_module" "name" {
  instance_id = string (Required)
  arn = string (Computed)
  contact_flow_module_id = string (Optional, Computed)
  content = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
