resource "aws_scheduler_schedule" "name" {
  schedule_expression = string (Required)
  action_after_completion = string (Optional, Computed)
  arn = string (Computed)
  description = string (Optional)
  end_date = string (Optional)
  group_name = string (Optional, Computed)
  id = string (Optional, Computed)
  kms_key_arn = string (Optional)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  schedule_expression_timezone = string (Optional)
  start_date = string (Optional)
  state = string (Optional)

  flexible_time_window block "list" (Required) {
    mode = string (Required)
    maximum_window_in_minutes = number (Optional)
  }

  target block "list" (Required) {
    arn = string (Required)
    role_arn = string (Required)
    input = string (Optional)

    dead_letter_config block "list" (Optional) {
      arn = string (Required)
    }

    ecs_parameters block "list" (Optional) {
      task_definition_arn = string (Required)
      enable_ecs_managed_tags = bool (Optional)
      enable_execute_command = bool (Optional)
      group = string (Optional)
      launch_type = string (Optional)
      platform_version = string (Optional)
      propagate_tags = string (Optional)
      reference_id = string (Optional)
      tags = ['map', 'string'] (Optional)
      task_count = number (Optional)

      capacity_provider_strategy block "set" (Optional) {
        capacity_provider = string (Required)
        base = number (Optional)
        weight = number (Optional)
      }

      network_configuration block "list" (Optional) {
        subnets = ['set', 'string'] (Required)
        assign_public_ip = bool (Optional)
        security_groups = ['set', 'string'] (Optional)
      }

      placement_constraints block "set" (Optional) {
        type = string (Required)
        expression = string (Optional)
      }

      placement_strategy block "set" (Optional) {
        type = string (Required)
        field = string (Optional)
      }
    }

    eventbridge_parameters block "list" (Optional) {
      detail_type = string (Required)
      source = string (Required)
    }

    kinesis_parameters block "list" (Optional) {
      partition_key = string (Required)
    }

    retry_policy block "list" (Optional) {
      maximum_event_age_in_seconds = number (Optional)
      maximum_retry_attempts = number (Optional)
    }

    sagemaker_pipeline_parameters block "list" (Optional) {

      pipeline_parameter block "set" (Optional) {
        name = string (Required)
        value = string (Required)
      }
    }

    sqs_parameters block "list" (Optional) {
      message_group_id = string (Optional)
    }
  }
}
