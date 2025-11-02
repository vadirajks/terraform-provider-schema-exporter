resource "aws_evidently_launch" "name" {
  name = string (Required)
  project = string (Required)
  arn = string (Computed)
  created_time = string (Computed)
  description = string (Optional)
  execution = ['list', ['object', {'ended_time': 'string', 'started_time': 'string'}]] (Computed)
  id = string (Optional, Computed)
  last_updated_time = string (Computed)
  randomization_salt = string (Optional)
  region = string (Optional, Computed)
  status = string (Computed)
  status_reason = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Computed)

  groups block "list" (Required) {
    feature = string (Required)
    name = string (Required)
    variation = string (Required)
    description = string (Optional)
  }

  metric_monitors block "list" (Optional) {

    metric_definition block "list" (Required) {
      entity_id_key = string (Required)
      name = string (Required)
      value_key = string (Required)
      event_pattern = string (Optional)
      unit_label = string (Optional)
    }
  }

  scheduled_splits_config block "list" (Optional) {

    steps block "list" (Required) {
      group_weights = ['map', 'number'] (Required)
      start_time = string (Required)

      segment_overrides block "list" (Optional) {
        evaluation_order = number (Required)
        segment = string (Required)
        weights = ['map', 'number'] (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
