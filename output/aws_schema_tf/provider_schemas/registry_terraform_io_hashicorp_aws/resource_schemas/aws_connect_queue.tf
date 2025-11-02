resource "aws_connect_queue" "name" {
  hours_of_operation_id = string (Required)
  instance_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  max_contacts = number (Optional)
  queue_id = string (Computed)
  quick_connect_ids = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
  status = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  outbound_caller_config block "list" (Optional) {
    outbound_caller_id_name = string (Optional)
    outbound_caller_id_number_id = string (Optional)
    outbound_flow_id = string (Optional)
  }
}
