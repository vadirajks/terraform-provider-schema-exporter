resource "aws_networkfirewall_firewall_transit_gateway_attachment_accepter" "name" {
  transit_gateway_attachment_id = string (Required)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
