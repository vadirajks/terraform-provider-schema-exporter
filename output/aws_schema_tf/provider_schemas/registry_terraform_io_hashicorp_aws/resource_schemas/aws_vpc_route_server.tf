resource "aws_vpc_route_server" "name" {
  amazon_side_asn = number (Required)
  arn = string (Computed)
  persist_routes = string (Optional, Computed)
  persist_routes_duration = number (Optional)
  region = string (Optional, Computed)
  route_server_id = string (Computed)
  sns_notifications_enabled = bool (Optional, Computed)
  sns_topic_arn = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
