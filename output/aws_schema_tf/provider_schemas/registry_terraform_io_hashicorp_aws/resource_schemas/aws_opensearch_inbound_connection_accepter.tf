resource "aws_opensearch_inbound_connection_accepter" "name" {
  connection_id = string (Required)
  connection_status = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
