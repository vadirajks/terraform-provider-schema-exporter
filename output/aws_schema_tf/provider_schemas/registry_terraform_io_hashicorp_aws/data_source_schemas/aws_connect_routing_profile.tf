data "aws_connect_routing_profile" "name" {
  instance_id = string (Required)
  arn = string (Computed)
  default_outbound_queue_id = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  media_concurrencies = ['set', ['object', {'channel': 'string', 'concurrency': 'number'}]] (Computed)
  name = string (Optional, Computed)
  queue_configs = ['set', ['object', {'channel': 'string', 'delay': 'number', 'priority': 'number', 'queue_arn': 'string', 'queue_id': 'string', 'queue_name': 'string'}]] (Computed)
  region = string (Optional, Computed)
  routing_profile_id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
