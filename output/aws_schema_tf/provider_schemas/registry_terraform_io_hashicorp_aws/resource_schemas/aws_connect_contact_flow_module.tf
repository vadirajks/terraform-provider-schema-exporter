resource "aws_connect_contact_flow_module" "name" {
  instance_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  contact_flow_module_id = string (Computed)
  content = string (Optional, Computed)
  content_hash = string (Optional)
  description = string (Optional)
  filename = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
