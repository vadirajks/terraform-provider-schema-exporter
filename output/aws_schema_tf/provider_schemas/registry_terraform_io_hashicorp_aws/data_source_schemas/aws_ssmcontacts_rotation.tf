data "aws_ssmcontacts_rotation" "name" {
  arn = string (Required)
  contact_ids = ['list', 'string'] (Computed)
  id = string (Computed)
  name = string (Computed)
  recurrence = ['list', ['object', {'daily_settings': ['list', ['object', {'hour_of_day': 'number', 'minute_of_hour': 'number'}]], 'monthly_settings': ['list', ['object', {'day_of_month': 'number', 'hand_off_time': ['list', ['object', {'hour_of_day': 'number', 'minute_of_hour': 'number'}]]}]], 'number_of_on_calls': 'number', 'recurrence_multiplier': 'number', 'shift_coverages': ['list', ['object', {'coverage_times': ['list', ['object', {'end': ['list', ['object', {'hour_of_day': 'number', 'minute_of_hour': 'number'}]], 'start': ['list', ['object', {'hour_of_day': 'number', 'minute_of_hour': 'number'}]]}]], 'map_block_key': 'string'}]], 'weekly_settings': ['list', ['object', {'day_of_week': 'string', 'hand_off_time': ['list', ['object', {'hour_of_day': 'number', 'minute_of_hour': 'number'}]]}]]}]] (Computed)
  region = string (Optional, Computed)
  start_time = string (Computed)
  tags = ['map', 'string'] (Computed)
  time_zone_id = string (Computed)
}
