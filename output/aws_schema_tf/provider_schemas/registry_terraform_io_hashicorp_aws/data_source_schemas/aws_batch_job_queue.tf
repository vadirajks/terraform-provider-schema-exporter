data "aws_batch_job_queue" "name" {
  name = string (Required)
  arn = string (Computed)
  compute_environment_order = ['list', ['object', {'compute_environment': 'string', 'order': 'number'}]] (Computed)
  id = string (Optional, Computed)
  job_state_time_limit_action = ['list', ['object', {'action': 'string', 'max_time_seconds': 'number', 'reason': 'string', 'state': 'string'}]] (Computed)
  priority = number (Computed)
  region = string (Optional, Computed)
  scheduling_policy_arn = string (Computed)
  state = string (Computed)
  status = string (Computed)
  status_reason = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
