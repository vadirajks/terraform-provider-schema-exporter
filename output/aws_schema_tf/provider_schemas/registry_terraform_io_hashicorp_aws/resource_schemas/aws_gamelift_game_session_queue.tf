resource "aws_gamelift_game_session_queue" "name" {
  name = string (Required)
  arn = string (Computed)
  custom_event_data = string (Optional)
  destinations = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  notification_target = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  timeout_in_seconds = number (Optional)

  player_latency_policy block "list" (Optional) {
    maximum_individual_player_latency_milliseconds = number (Required)
    policy_duration_seconds = number (Optional)
  }
}
