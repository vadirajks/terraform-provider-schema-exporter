data "aws_batch_compute_environment" "name" {
  name = string (Required)
  arn = string (Computed)
  ecs_cluster_arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  service_role = string (Computed)
  state = string (Computed)
  status = string (Computed)
  status_reason = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  type = string (Computed)
  update_policy = ['list', ['object', {'job_execution_timeout_minutes': 'number', 'terminate_jobs_on_update': 'bool'}]] (Computed)
}
