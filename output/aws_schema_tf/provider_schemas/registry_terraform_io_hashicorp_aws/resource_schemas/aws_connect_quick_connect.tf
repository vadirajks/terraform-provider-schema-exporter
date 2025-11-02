resource "aws_connect_quick_connect" "name" {
  instance_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  quick_connect_id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  quick_connect_config block "list" (Required) {
    quick_connect_type = string (Required)

    phone_config block "list" (Optional) {
      phone_number = string (Required)
    }

    queue_config block "list" (Optional) {
      contact_flow_id = string (Required)
      queue_id = string (Required)
    }

    user_config block "list" (Optional) {
      contact_flow_id = string (Required)
      user_id = string (Required)
    }
  }
}
