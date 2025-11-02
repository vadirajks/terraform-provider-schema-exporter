resource "aws_ssmincidents_response_plan" "name" {
  name = string (Required)
  arn = string (Computed)
  chat_channel = ['set', 'string'] (Optional)
  display_name = string (Optional)
  engagements = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  action block "list" (Optional) {

    ssm_automation block "list" (Optional) {
      document_name = string (Required)
      role_arn = string (Required)
      document_version = string (Optional)
      dynamic_parameters = ['map', 'string'] (Optional)
      target_account = string (Optional)

      parameter block "set" (Optional) {
        name = string (Required)
        values = ['set', 'string'] (Required)
      }
    }
  }

  incident_template block "list" (Required) {
    impact = number (Required)
    title = string (Required)
    dedupe_string = string (Optional)
    incident_tags = ['map', 'string'] (Optional)
    summary = string (Optional)

    notification_target block "set" (Optional) {
      sns_topic_arn = string (Required)
    }
  }

  integration block "list" (Optional) {

    pagerduty block "list" (Optional) {
      name = string (Required)
      secret_id = string (Required)
      service_id = string (Required)
    }
  }
}
