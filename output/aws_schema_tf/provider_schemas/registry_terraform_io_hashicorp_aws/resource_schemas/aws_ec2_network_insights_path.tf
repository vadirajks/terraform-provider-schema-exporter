resource "aws_ec2_network_insights_path" "name" {
  protocol = string (Required)
  source = string (Required)
  arn = string (Computed)
  destination = string (Optional)
  destination_arn = string (Computed)
  destination_ip = string (Optional)
  destination_port = number (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  source_arn = string (Computed)
  source_ip = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  filter_at_destination block "list" (Optional) {
    destination_address = string (Optional)
    source_address = string (Optional)

    destination_port_range block "list" (Optional) {
      from_port = number (Optional)
      to_port = number (Optional)
    }

    source_port_range block "list" (Optional) {
      from_port = number (Optional)
      to_port = number (Optional)
    }
  }

  filter_at_source block "list" (Optional) {
    destination_address = string (Optional)
    source_address = string (Optional)

    destination_port_range block "list" (Optional) {
      from_port = number (Optional)
      to_port = number (Optional)
    }

    source_port_range block "list" (Optional) {
      from_port = number (Optional)
      to_port = number (Optional)
    }
  }
}
