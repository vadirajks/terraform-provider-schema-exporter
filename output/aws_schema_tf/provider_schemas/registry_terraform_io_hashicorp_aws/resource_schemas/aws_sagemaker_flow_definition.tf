resource "aws_sagemaker_flow_definition" "name" {
  flow_definition_name = string (Required)
  role_arn = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  human_loop_activation_config block "list" (Optional) {

    human_loop_activation_conditions_config block "list" (Optional) {
      human_loop_activation_conditions = string (Required)
    }
  }

  human_loop_config block "list" (Required) {
    human_task_ui_arn = string (Required)
    task_count = number (Required)
    task_description = string (Required)
    task_title = string (Required)
    workteam_arn = string (Required)
    task_availability_lifetime_in_seconds = number (Optional)
    task_keywords = ['set', 'string'] (Optional)
    task_time_limit_in_seconds = number (Optional)

    public_workforce_task_price block "list" (Optional) {

      amount_in_usd block "list" (Optional) {
        cents = number (Optional)
        dollars = number (Optional)
        tenth_fractions_of_a_cent = number (Optional)
      }
    }
  }

  human_loop_request_source block "list" (Optional) {
    aws_managed_human_loop_request_source = string (Required)
  }

  output_config block "list" (Required) {
    s3_output_path = string (Required)
    kms_key_id = string (Optional)
  }
}
