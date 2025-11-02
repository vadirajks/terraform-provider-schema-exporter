data "aws_connect_queue" "name" {
  instance_id = string (Required)
  arn = string (Computed)
  description = string (Computed)
  hours_of_operation_id = string (Computed)
  id = string (Optional, Computed)
  max_contacts = number (Computed)
  name = string (Optional, Computed)
  outbound_caller_config = ['list', ['object', {'outbound_caller_id_name': 'string', 'outbound_caller_id_number_id': 'string', 'outbound_flow_id': 'string'}]] (Computed)
  queue_id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
