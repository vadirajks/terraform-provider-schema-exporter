resource "aws_autoscaling_schedule" "name" {
  autoscaling_group_name = string (Required)
  scheduled_action_name = string (Required)
  arn = string (Computed)
  desired_capacity = number (Optional, Computed)
  end_time = string (Optional, Computed)
  id = string (Optional, Computed)
  max_size = number (Optional, Computed)
  min_size = number (Optional, Computed)
  recurrence = string (Optional, Computed)
  region = string (Optional, Computed)
  start_time = string (Optional, Computed)
  time_zone = string (Optional, Computed)
}
