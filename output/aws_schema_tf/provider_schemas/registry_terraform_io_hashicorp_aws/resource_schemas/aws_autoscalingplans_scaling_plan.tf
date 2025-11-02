resource "aws_autoscalingplans_scaling_plan" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  scaling_plan_version = number (Computed)

  application_source block "list" (Required) {
    cloudformation_stack_arn = string (Optional)

    tag_filter block "set" (Optional) {
      key = string (Required)
      values = ['set', 'string'] (Optional)
    }
  }

  scaling_instruction block "set" (Required) {
    max_capacity = number (Required)
    min_capacity = number (Required)
    resource_id = string (Required)
    scalable_dimension = string (Required)
    service_namespace = string (Required)
    disable_dynamic_scaling = bool (Optional)
    predictive_scaling_max_capacity_behavior = string (Optional)
    predictive_scaling_max_capacity_buffer = number (Optional, Computed)
    predictive_scaling_mode = string (Optional)
    scaling_policy_update_behavior = string (Optional)
    scheduled_action_buffer_time = number (Optional)

    customized_load_metric_specification block "list" (Optional) {
      metric_name = string (Required)
      namespace = string (Required)
      statistic = string (Required)
      dimensions = ['map', 'string'] (Optional)
      unit = string (Optional)
    }

    predefined_load_metric_specification block "list" (Optional) {
      predefined_load_metric_type = string (Required)
      resource_label = string (Optional)
    }

    target_tracking_configuration block "set" (Required) {
      target_value = number (Required)
      disable_scale_in = bool (Optional)
      estimated_instance_warmup = number (Optional)
      scale_in_cooldown = number (Optional)
      scale_out_cooldown = number (Optional)

      customized_scaling_metric_specification block "list" (Optional) {
        metric_name = string (Required)
        namespace = string (Required)
        statistic = string (Required)
        dimensions = ['map', 'string'] (Optional)
        unit = string (Optional)
      }

      predefined_scaling_metric_specification block "list" (Optional) {
        predefined_scaling_metric_type = string (Required)
        resource_label = string (Optional)
      }
    }
  }
}
