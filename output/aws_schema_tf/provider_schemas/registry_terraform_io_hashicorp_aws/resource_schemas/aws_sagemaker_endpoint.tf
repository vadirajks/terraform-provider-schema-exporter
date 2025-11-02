resource "aws_sagemaker_endpoint" "name" {
  endpoint_config_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  deployment_config block "list" (Optional) {

    auto_rollback_configuration block "list" (Optional) {

      alarms block "set" (Optional) {
        alarm_name = string (Required)
      }
    }

    blue_green_update_policy block "list" (Optional) {
      maximum_execution_timeout_in_seconds = number (Optional)
      termination_wait_in_seconds = number (Optional)

      traffic_routing_configuration block "list" (Required) {
        type = string (Required)
        wait_interval_in_seconds = number (Required)

        canary_size block "list" (Optional) {
          type = string (Required)
          value = number (Required)
        }

        linear_step_size block "list" (Optional) {
          type = string (Required)
          value = number (Required)
        }
      }
    }

    rolling_update_policy block "list" (Optional) {
      wait_interval_in_seconds = number (Required)
      maximum_execution_timeout_in_seconds = number (Optional)

      maximum_batch_size block "list" (Required) {
        type = string (Required)
        value = number (Required)
      }

      rollback_maximum_batch_size block "list" (Optional) {
        type = string (Required)
        value = number (Required)
      }
    }
  }
}
