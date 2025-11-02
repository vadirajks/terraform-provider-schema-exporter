resource "aws_quicksight_refresh_schedule" "name" {
  data_set_id = string (Required)
  schedule_id = string (Required)
  arn = string (Computed)
  aws_account_id = string (Optional, Computed)
  id = string (Computed)
  region = string (Optional, Computed)

  schedule block "list" (Optional) {
    refresh_type = string (Required)
    start_after_date_time = string (Optional, Computed)

    schedule_frequency block "list" (Optional) {
      interval = string (Required)
      time_of_the_day = string (Optional, Computed)
      timezone = string (Optional, Computed)

      refresh_on_day block "list" (Optional) {
        day_of_month = string (Optional)
        day_of_week = string (Optional)
      }
    }
  }
}
