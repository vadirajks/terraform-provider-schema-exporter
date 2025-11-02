data "aws_odb_network_peering_connection" "name" {
  id = string (Required)
  arn = string (Computed)
  created_at = string (Computed)
  display_name = string (Computed)
  odb_network_arn = string (Computed)
  odb_peering_connection_type = string (Computed)
  peer_network_arn = string (Computed)
  percent_progress = number (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  status_reason = string (Computed)
  tags = ['map', 'string'] (Computed)
}
