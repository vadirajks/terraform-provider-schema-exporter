resource "aws_connect_hours_of_operation" "name" {
  instance_id = string (Required)
  name = string (Required)
  time_zone = string (Required)
  arn = string (Computed)
  description = string (Optional)
  hours_of_operation_id = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  config block "set" (Required) {
    day = string (Required)

    end_time block "list" (Required) {
      hours = number (Required)
      minutes = number (Required)
    }

    start_time block "list" (Required) {
      hours = number (Required)
      minutes = number (Required)
    }
  }
}
