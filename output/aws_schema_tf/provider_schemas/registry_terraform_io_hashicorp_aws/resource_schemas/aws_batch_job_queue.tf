resource "aws_batch_job_queue" "name" {
  name = string (Required)
  priority = number (Required)
  state = string (Required)
  arn = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  scheduling_policy_arn = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  compute_environment_order block "list" (Optional) {
    compute_environment = string (Required)
    order = number (Required)
  }

  job_state_time_limit_action block "list" (Optional) {
    action = string (Required)
    max_time_seconds = number (Required)
    reason = string (Required)
    state = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
