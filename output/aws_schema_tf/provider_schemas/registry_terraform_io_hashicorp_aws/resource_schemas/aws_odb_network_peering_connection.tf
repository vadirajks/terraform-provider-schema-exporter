resource "aws_odb_network_peering_connection" "name" {
  display_name = string (Required)
  odb_network_id = string (Required)
  peer_network_id = string (Required)
  arn = string (Computed)
  created_at = string (Computed)
  id = string (Computed)
  odb_network_arn = string (Computed)
  odb_peering_connection_type = string (Computed)
  peer_network_arn = string (Computed)
  percent_progress = number (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  status_reason = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
