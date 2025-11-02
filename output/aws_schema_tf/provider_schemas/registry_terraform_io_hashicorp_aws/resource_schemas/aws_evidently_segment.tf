resource "aws_evidently_segment" "name" {
  name = string (Required)
  pattern = string (Required)
  arn = string (Computed)
  created_time = string (Computed)
  description = string (Optional)
  experiment_count = number (Computed)
  id = string (Optional, Computed)
  last_updated_time = string (Computed)
  launch_count = number (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
