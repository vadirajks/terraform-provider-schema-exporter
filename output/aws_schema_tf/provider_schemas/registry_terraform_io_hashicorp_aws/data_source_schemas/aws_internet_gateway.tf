data "aws_internet_gateway" "name" {
  arn = string (Computed)
  attachments = ['list', ['object', {'state': 'string', 'vpc_id': 'string'}]] (Computed)
  id = string (Optional, Computed)
  internet_gateway_id = string (Optional, Computed)
  owner_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
