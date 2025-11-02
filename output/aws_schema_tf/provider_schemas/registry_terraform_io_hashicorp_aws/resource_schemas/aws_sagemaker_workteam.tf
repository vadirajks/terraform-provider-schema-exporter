resource "aws_sagemaker_workteam" "name" {
  description = string (Required)
  workteam_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  subdomain = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  workforce_name = string (Optional)

  member_definition block "list" (Required) {

    cognito_member_definition block "list" (Optional) {
      client_id = string (Required)
      user_group = string (Required)
      user_pool = string (Required)
    }

    oidc_member_definition block "list" (Optional) {
      groups = ['set', 'string'] (Required)
    }
  }

  notification_configuration block "list" (Optional) {
    notification_topic_arn = string (Optional)
  }

  worker_access_configuration block "list" (Optional) {

    s3_presign block "list" (Optional) {

      iam_policy_constraints block "list" (Optional) {
        source_ip = string (Optional, Computed)
        vpc_source_ip = string (Optional, Computed)
      }
    }
  }
}
