resource "aws_lexv2models_bot" "name" {
  idle_session_ttl_in_seconds = number (Required)
  name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  test_bot_alias_tags = ['map', 'string'] (Optional)
  type = string (Optional, Computed)

  data_privacy block "list" (Optional) {
    child_directed = bool (Required)
  }

  members block "list" (Optional) {
    alias_id = string (Required)
    alias_name = string (Required)
    id = string (Required)
    name = string (Required)
    version = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
