resource "aws_chatbot_teams_channel_configuration" "name" {
  channel_id = string (Required)
  configuration_name = string (Required)
  iam_role_arn = string (Required)
  team_id = string (Required)
  tenant_id = string (Required)
  channel_name = string (Optional, Computed)
  chat_configuration_arn = string (Computed)
  guardrail_policy_arns = ['list', 'string'] (Optional, Computed)
  logging_level = string (Optional, Computed)
  region = string (Optional, Computed)
  sns_topic_arns = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  team_name = string (Optional, Computed)
  user_authorization_required = bool (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
