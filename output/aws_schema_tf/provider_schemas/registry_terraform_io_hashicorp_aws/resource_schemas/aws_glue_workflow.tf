resource "aws_glue_workflow" "name" {
  arn = string (Computed)
  default_run_properties = ['map', 'string'] (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  max_concurrent_runs = number (Optional)
  name = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
