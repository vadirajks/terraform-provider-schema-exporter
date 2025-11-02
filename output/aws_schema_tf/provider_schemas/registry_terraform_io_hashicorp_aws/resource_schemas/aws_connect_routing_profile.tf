resource "aws_connect_routing_profile" "name" {
  default_outbound_queue_id = string (Required)
  description = string (Required)
  instance_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  routing_profile_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  media_concurrencies block "set" (Required) {
    channel = string (Required)
    concurrency = number (Required)
  }

  queue_configs block "set" (Optional) {
    channel = string (Required)
    delay = number (Required)
    priority = number (Required)
    queue_id = string (Required)
    queue_arn = string (Computed)
    queue_name = string (Computed)
  }
}
