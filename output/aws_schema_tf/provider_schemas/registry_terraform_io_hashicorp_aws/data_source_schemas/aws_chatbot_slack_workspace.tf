data "aws_chatbot_slack_workspace" "name" {
  slack_team_name = string (Required)
  region = string (Optional, Computed)
  slack_team_id = string (Computed)
}
