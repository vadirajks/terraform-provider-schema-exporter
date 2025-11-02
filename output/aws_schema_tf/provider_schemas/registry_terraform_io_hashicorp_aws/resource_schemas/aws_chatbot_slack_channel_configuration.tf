resource "aws_chatbot_slack_channel_configuration" "name" {
  configuration_name = string (Required)
  iam_role_arn = string (Required)
  slack_channel_id = string (Required)
  slack_team_id = string (Required)
  chat_configuration_arn = string (Computed)
  guardrail_policy_arns = ['list', 'string'] (Optional, Computed)
  logging_level = string (Optional, Computed)
  region = string (Optional, Computed)
  slack_channel_name = string (Computed)
  slack_team_name = string (Computed)
  sns_topic_arns = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  user_authorization_required = bool (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
