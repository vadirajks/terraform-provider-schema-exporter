resource "aws_connect_user" "name" {
  instance_id = string (Required)
  name = string (Required)
  routing_profile_id = string (Required)
  security_profile_ids = ['set', 'string'] (Required)
  arn = string (Computed)
  directory_user_id = string (Optional, Computed)
  hierarchy_group_id = string (Optional)
  id = string (Optional, Computed)
  password = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  user_id = string (Computed)

  identity_info block "list" (Optional) {
    email = string (Optional)
    first_name = string (Optional)
    last_name = string (Optional)
    secondary_email = string (Optional)
  }

  phone_config block "list" (Required) {
    phone_type = string (Required)
    after_contact_work_time_limit = number (Optional)
    auto_accept = bool (Optional)
    desk_phone_number = string (Optional)
  }
}
