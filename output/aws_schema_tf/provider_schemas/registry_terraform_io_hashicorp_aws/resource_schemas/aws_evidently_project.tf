resource "aws_evidently_project" "name" {
  name = string (Required)
  active_experiment_count = number (Computed)
  active_launch_count = number (Computed)
  arn = string (Computed)
  created_time = string (Computed)
  description = string (Optional)
  experiment_count = number (Computed)
  feature_count = number (Computed)
  id = string (Optional, Computed)
  last_updated_time = string (Computed)
  launch_count = number (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  data_delivery block "list" (Optional) {

    cloudwatch_logs block "list" (Optional) {
      log_group = string (Optional)
    }

    s3_destination block "list" (Optional) {
      bucket = string (Optional)
      prefix = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
