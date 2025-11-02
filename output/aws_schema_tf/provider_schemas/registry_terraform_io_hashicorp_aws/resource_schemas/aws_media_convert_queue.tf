resource "aws_media_convert_queue" "name" {
  name = string (Required)
  arn = string (Computed)
  concurrent_jobs = number (Optional, Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  pricing_plan = string (Optional)
  region = string (Optional, Computed)
  status = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  reservation_plan_settings block "list" (Optional) {
    commitment = string (Required)
    renewal_type = string (Required)
    reserved_slots = number (Required)
  }
}
