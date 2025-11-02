resource "aws_glue_trigger" "name" {
  name = string (Required)
  type = string (Required)
  arn = string (Computed)
  description = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  schedule = string (Optional)
  start_on_creation = bool (Optional)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  workflow_name = string (Optional)

  actions block "list" (Required) {
    arguments = ['map', 'string'] (Optional)
    crawler_name = string (Optional)
    job_name = string (Optional)
    security_configuration = string (Optional)
    timeout = number (Optional)

    notification_property block "list" (Optional) {
      notify_delay_after = number (Optional)
    }
  }

  event_batching_condition block "list" (Optional) {
    batch_size = number (Required)
    batch_window = number (Optional)
  }

  predicate block "list" (Optional) {
    logical = string (Optional)

    conditions block "list" (Required) {
      crawl_state = string (Optional)
      crawler_name = string (Optional)
      job_name = string (Optional)
      logical_operator = string (Optional)
      state = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
