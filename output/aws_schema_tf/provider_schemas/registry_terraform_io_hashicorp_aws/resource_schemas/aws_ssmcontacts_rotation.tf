resource "aws_ssmcontacts_rotation" "name" {
  contact_ids = ['list', 'string'] (Required)
  name = string (Required)
  time_zone_id = string (Required)
  arn = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  start_time = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  recurrence block "list" (Optional) {
    number_of_on_calls = number (Required)
    recurrence_multiplier = number (Required)

    daily_settings block "list" (Optional) {
      hour_of_day = number (Required)
      minute_of_hour = number (Required)
    }

    monthly_settings block "list" (Optional) {
      day_of_month = number (Required)

      hand_off_time block "list" (Optional) {
        hour_of_day = number (Required)
        minute_of_hour = number (Required)
      }
    }

    shift_coverages block "list" (Optional) {
      map_block_key = string (Required)

      coverage_times block "list" (Optional) {

        end block "list" (Optional) {
          hour_of_day = number (Required)
          minute_of_hour = number (Required)
        }

        start block "list" (Optional) {
          hour_of_day = number (Required)
          minute_of_hour = number (Required)
        }
      }
    }

    weekly_settings block "list" (Optional) {
      day_of_week = string (Required)

      hand_off_time block "list" (Optional) {
        hour_of_day = number (Required)
        minute_of_hour = number (Required)
      }
    }
  }
}
