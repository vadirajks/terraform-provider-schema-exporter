data "aws_ec2_network_insights_path" "name" {
  arn = string (Computed)
  destination = string (Computed)
  destination_arn = string (Computed)
  destination_ip = string (Computed)
  destination_port = number (Computed)
  filter_at_destination = ['list', ['object', {'destination_address': 'string', 'destination_port_range': ['list', ['object', {'from_port': 'number', 'to_port': 'number'}]], 'source_address': 'string', 'source_port_range': ['list', ['object', {'from_port': 'number', 'to_port': 'number'}]]}]] (Computed)
  filter_at_source = ['list', ['object', {'destination_address': 'string', 'destination_port_range': ['list', ['object', {'from_port': 'number', 'to_port': 'number'}]], 'source_address': 'string', 'source_port_range': ['list', ['object', {'from_port': 'number', 'to_port': 'number'}]]}]] (Computed)
  id = string (Optional, Computed)
  network_insights_path_id = string (Optional, Computed)
  protocol = string (Computed)
  region = string (Optional, Computed)
  source = string (Computed)
  source_arn = string (Computed)
  source_ip = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }
}
