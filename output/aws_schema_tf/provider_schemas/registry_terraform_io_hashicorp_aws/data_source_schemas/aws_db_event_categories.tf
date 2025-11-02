data "aws_db_event_categories" "name" {
  event_categories = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  source_type = string (Optional)
}
