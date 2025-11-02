resource "aws_scheduler_schedule_group" "name" {
  arn = string (Computed)
  creation_date = string (Computed)
  id = string (Optional, Computed)
  last_modification_date = string (Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
