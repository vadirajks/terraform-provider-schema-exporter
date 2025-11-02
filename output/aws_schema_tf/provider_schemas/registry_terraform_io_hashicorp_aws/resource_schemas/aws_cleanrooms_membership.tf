resource "aws_cleanrooms_membership" "name" {
  collaboration_id = string (Required)
  query_log_status = string (Required)
  arn = string (Computed)
  collaboration_arn = string (Computed)
  collaboration_creator_account_id = string (Computed)
  collaboration_creator_display_name = string (Computed)
  collaboration_name = string (Computed)
  create_time = string (Computed)
  id = string (Computed)
  member_abilities = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  update_time = string (Computed)

  default_result_configuration block "list" (Optional) {
    role_arn = string (Optional)

    output_configuration block "list" (Optional) {

      s3 block "list" (Optional) {
        bucket = string (Required)
        result_format = string (Required)
        key_prefix = string (Optional)
      }
    }
  }

  payment_configuration block "list" (Optional) {

    query_compute block "list" (Optional) {
      is_responsible = bool (Required)
    }
  }
}
