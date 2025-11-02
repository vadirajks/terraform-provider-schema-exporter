resource "aws_ssmcontacts_plan" "name" {
  contact_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  stage block "list" (Required) {
    duration_in_minutes = number (Required)

    target block "list" (Optional) {

      channel_target_info block "list" (Optional) {
        contact_channel_id = string (Required)
        retry_interval_in_minutes = number (Optional)
      }

      contact_target_info block "list" (Optional) {
        is_essential = bool (Required)
        contact_id = string (Optional)
      }
    }
  }
}
